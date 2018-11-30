open Syntax

exception Unify of Type.t * Type.t * Syntax.t

let extenv = ref M.empty

let rec deref_typ = function
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)
let rec deref_term = function
  | Unit(_) | Bool(_) | Int(_) | Float(_) | Var(_) as e -> e
  | Not(e, p) -> Not(deref_term e, p)
  | Neg(e, p) -> Neg(deref_term e, p)
  | Add(e1, e2, p) -> Add(deref_term e1, deref_term e2, p)
  | Sub(e1, e2, p) -> Sub(deref_term e1, deref_term e2, p)
  | Mul(e1, e2, p) -> Mul(deref_term e1, deref_term e2, p)
  | Div(e1, e2, p) -> Div(deref_term e1, deref_term e2, p)
  | Eq(e1, e2, p) -> Eq(deref_term e1, deref_term e2, p)
  | LE(e1, e2, p) -> LE(deref_term e1, deref_term e2, p)
  | FAbs(e, p) -> FAbs(deref_term e, p)
  | FNeg(e, p) -> FNeg(deref_term e, p)
  | FSqrt(e, p) -> FSqrt(deref_term e, p)
  | FFloor(e, p) -> FFloor(deref_term e, p)
  | FAdd(e1, e2, p) -> FAdd(deref_term e1, deref_term e2, p)
  | FSub(e1, e2, p) -> FSub(deref_term e1, deref_term e2, p)
  | FMul(e1, e2, p) -> FMul(deref_term e1, deref_term e2, p)
  | FDiv(e1, e2, p) -> FDiv(deref_term e1, deref_term e2, p)
  | FtoI(e, p) -> FtoI(deref_term e, p)
  | ItoF(e, p) -> ItoF(deref_term e, p)
  | If(e1, e2, e3, p) -> If(deref_term e1, deref_term e2, deref_term e3, p)
  | Let(xt, e1, e2, p) -> Let(deref_id_typ xt, deref_term e1, deref_term e2, p)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, p) ->
      LetRec({ name = deref_id_typ xt;
               args = List.map deref_id_typ yts;
               body = deref_term e1 },
             deref_term e2, p)
  | App(e, es, p) -> App(deref_term e, List.map deref_term es, p)
  | Tuple(es, p) -> Tuple(List.map deref_term es, p)
  | LetTuple(xts, e1, e2, p) ->
      LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2, p)
  | Array(e1, e2, p) -> Array(deref_term e1, deref_term e2, p)
  | Get(e1, e2, p) -> Get(deref_term e1, deref_term e2, p)
  | Put(e1, e2, e3, p) -> Put(deref_term e1, deref_term e2, deref_term e3, p)

let rec occur r1 = function
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

(* t2がt1であるかどうかを検査 *)
let rec unify t1 t2 e =
  (* let open Lexing in
  Printf.printf "unifing line %d-%d characters %d-%d\n"
    sp.pos_lnum ep.pos_lnum
    (sp.pos_cnum - sp.pos_bol) (ep.pos_cnum - ep.pos_bol);
  Type.print_type t1;
  Type.print_type t2; *)
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool
  | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 (fun t1 t2 -> unify t1 t2 e) t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2, e)));
      unify t1' t2' e
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 (fun t1 t2 -> unify t1 t2 e) t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2, e)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2 e
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2 e
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2' e
  | Type.Var({ contents = None } as r1), _ ->
      if occur r1 t2 then raise (Unify(t1, t2, e));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2, e));
      r2 := Some(t1)
  | Type.Toplevel(type_ref), _ -> type_ref := t2
  | _, _ -> raise (Unify(t1, t2, e))

(* envは Type.t M 型で、変数名と型の対応 *)
let rec g env e =
  try
    match e with
    | Unit(_) -> Type.Unit
    | Bool(_) -> Type.Bool
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Not(e, p) ->
        unify Type.Bool (g env e) e;
        Type.Bool
    | Neg(e, p) ->
        unify Type.Int (g env e) e;
        Type.Int
    | Add(e1, e2, p) | Sub(e1, e2, p) | Mul(e1, e2, p) | Div(e1, e2, p) ->
        unify Type.Int (g env e1) e1;
        unify Type.Int (g env e2) e2;
        Type.Int
    | FAbs(e, p) | FNeg(e, p) | FSqrt(e, p) | FFloor(e, p) ->
        unify Type.Float (g env e) e;
        Type.Float
    | FAdd(e1, e2, p) | FSub(e1, e2, p) | FMul(e1, e2, p) | FDiv(e1, e2, p) ->
        unify Type.Float (g env e1) e1;
        unify Type.Float (g env e2) e2;
        Type.Float
    | FtoI(e, p) ->
        unify Type.Float (g env e) e;
        Type.Int
    | ItoF(e, p) ->
        unify Type.Int (g env e) e;
        Type.Float
    | Eq(e1, e2, p) | LE(e1, e2, p) ->
        unify (g env e1) (g env e2) e2;
        Type.Bool
    | If(e1, e2, e3, p) ->
        unify (g env e1) Type.Bool e1;
        let t2 = g env e2 in
        let t3 = g env e3 in
        unify t2 t3 e3;
        t2
    | Let((x, t), e1, e2, p) ->
        unify t (g env e1) e1;
        g (M.add x t env) e2
    | Var(x, p) when M.mem x env -> M.find x env
    | Var(x, p) when M.mem x !extenv -> M.find x !extenv
    | Var(x, p) -> (* 宣言されてたならLetを通っており型があるはず、ないので外部変数 *)
        Format.eprintf "free variable %s assumed as external@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        t
    | LetRec({name = (x, t); args = yts; body = e1}, e2, p) ->
        let env = M.add x t env in
        unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) e1)) e1;
        g env e2
    | App(e, es, p) ->
        let t = Type.gentyp () in
        unify (Type.Fun(List.map (g env) es, t)) (g env e) e;
        t
    | Tuple(es, p) -> Type.Tuple(List.map (g env) es)
    | LetTuple(xts, e1, e2, p) ->
        unify (Type.Tuple(List.map snd xts)) (g env e1) e1;
        g (M.add_list xts env) e2
    | Array(e1, e2, p) ->
        unify (g env e1) Type.Int e1;
        Type.Array(g env e2)
    | Get(e1, e2, p) ->
        let t = Type.gentyp () in
        unify (Type.Array(t)) (g env e1) e1;
        unify Type.Int (g env e2) e2;
        t
    | Put(e1, e2, e3, p) ->
        let t = Type.gentyp () in
        unify (Type.Array(t)) (g env e1) e1;
        unify Type.Int (g env e2) e2;
        unify t (g env e3) e3;
        Type.Unit
  with Unify(t1, t2, e) ->
    let (sp, ep) = position_of_syntax e in
    let open Lexing in
    failwith
      ((Printf.sprintf "type error near line %d-%d, characters %d-%d\n"
         sp.pos_lnum
         ep.pos_lnum
         (sp.pos_cnum - sp.pos_bol)
         (ep.pos_cnum - ep.pos_bol)) ^
       (Printf.sprintf
         "This expression has type %s but an expression was expected of type %s"
         (Type.string_of_type (deref_typ t2))
         (Type.string_of_type (deref_typ t1))))

let f e =
  extenv := M.empty;
  let toplevel_type = ref Type.Unit in
  unify (Type.Toplevel(toplevel_type)) (g M.empty e) e;
  (match !toplevel_type with
  | Type.Unit -> ()
  | _ ->
      Format.eprintf "warning: toplevel type is %s@."
        (Type.string_of_type !toplevel_type));
  extenv := M.map deref_typ !extenv;
  deref_term e
