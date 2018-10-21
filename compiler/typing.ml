open Syntax

exception Unify of Type.t * Type.t * Lexing.position * Lexing.position

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
let rec deref_term (e, sp, ep) =
  let exp' =
    match e with
    | Not(e) -> Not(deref_term e)
    | Neg(e) -> Neg(deref_term e)
    | Add(e1, e2) -> Add(deref_term e1, deref_term e2)
    | Sub(e1, e2) -> Sub(deref_term e1, deref_term e2)
    | Mul(e1, e2) -> Mul(deref_term e1, deref_term e2)
    | Div(e1, e2) -> Div(deref_term e1, deref_term e2)
    | Eq(e1, e2) -> Eq(deref_term e1, deref_term e2)
    | LE(e1, e2) -> LE(deref_term e1, deref_term e2)
    | FNeg(e) -> FNeg(deref_term e)
    | FAdd(e1, e2) -> FAdd(deref_term e1, deref_term e2)
    | FSub(e1, e2) -> FSub(deref_term e1, deref_term e2)
    | FMul(e1, e2) -> FMul(deref_term e1, deref_term e2)
    | FDiv(e1, e2) -> FDiv(deref_term e1, deref_term e2)
    | If(e1, e2, e3) -> If(deref_term e1, deref_term e2, deref_term e3)
    | Let(xt, e1, e2) -> Let(deref_id_typ xt, deref_term e1, deref_term e2)
    | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
        LetRec({ name = deref_id_typ xt;
                 args = List.map deref_id_typ yts;
                 body = deref_term e1 },
               deref_term e2)
    | App(e, es) -> App(deref_term e, List.map deref_term es)
    | Tuple(es) -> Tuple(List.map deref_term es)
    | LetTuple(xts, e1, e2) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2)
    | Array(e1, e2) -> Array(deref_term e1, deref_term e2)
    | Get(e1, e2) -> Get(deref_term e1, deref_term e2)
    | Put(e1, e2, e3) -> Put(deref_term e1, deref_term e2, deref_term e3)
    | e -> e in
  (exp', sp, ep)

let rec occur r1 = function
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

(* t2がt1であるかどうかを検査 *)
let rec unify t1 t2 sp ep =
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
      (try List.iter2 (fun t1 t2 -> unify t1 t2 sp ep) t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2, sp, ep)));
      unify t1' t2' sp ep
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 (fun t1 t2 -> unify t1 t2 sp ep) t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2, sp, ep)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2 sp ep
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2 sp ep
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2' sp ep
  | Type.Var({ contents = None } as r1), _ ->
      if occur r1 t2 then raise (Unify(t1, t2, sp, ep));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2, sp, ep));
      r2 := Some(t1)
  | Type.Toplevel(type_ref), _ -> type_ref := t2
  | _, _ -> raise (Unify(t1, t2, sp, ep))

let rec g env (e, _, _) =
  try
    match e with
    | Unit -> Type.Unit
    | Bool(_) -> Type.Bool
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Not(e, sp, ep) ->
        unify Type.Bool (g env (e, sp, ep)) sp ep;
        Type.Bool
    | Neg(e, sp, ep) ->
        unify Type.Int (g env (e, sp, ep)) sp ep;
        Type.Int
    | Add((e1, sp1, ep1), (e2, sp2, ep2))
    | Sub((e1, sp1, ep1), (e2, sp2, ep2))
    | Mul((e1, sp1, ep1), (e2, sp2, ep2))
    | Div((e1, sp1, ep1), (e2, sp2, ep2)) ->
        unify Type.Int (g env (e1, sp1, ep1)) sp1 ep1;
        unify Type.Int (g env (e2, sp2, ep2)) sp2 ep2;
        Type.Int
    | FNeg(e, sp, ep) ->
        unify Type.Float (g env (e, sp, ep)) sp ep;
        Type.Float
    | FAdd((e1, sp1, ep1), (e2, sp2, ep2))
    | FSub((e1, sp1, ep1), (e2, sp2, ep2))
    | FMul((e1, sp1, ep1), (e2, sp2, ep2))
    | FDiv((e1, sp1, ep1), (e2, sp2, ep2)) ->
        unify Type.Float (g env (e1, sp1, ep1)) sp1 ep1;
        unify Type.Float (g env (e2, sp2, ep2)) sp2 ep2;
        Type.Float
    | Eq(e1, (e2, sp2, ep2)) | LE(e1, (e2, sp2, ep2)) ->
        unify (g env e1) (g env (e2, sp2, ep2)) sp2 ep2;
        Type.Bool
    | If((e1, sp1, ep1), e2, (e3, sp3, ep3)) ->
        unify (g env (e1, sp1, ep1)) Type.Bool sp1 ep1;
        let t2 = g env e2 in
        let t3 = g env (e3, sp3, ep3) in
        unify t2 t3 sp3 ep3;
        t2
    | Let((x, t), (e1, sp1, ep1), e2) ->
        unify t (g env (e1, sp1, ep1)) sp1 ep1;
        g (M.add x t env) e2
    | Var(x) when M.mem x env -> M.find x env
    | Var(x) when M.mem x !extenv -> M.find x !extenv
    | Var(x) ->
        Format.eprintf "free variable %s assumed as external@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        t
    | LetRec({ name = (x, t); args = yts; body = (e1, sp1, ep1) }, e2) ->
        let env = M.add x t env in
        unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) (e1, sp1, ep1))) sp1 ep1;
        g env e2
    | App((e, sp, ep), es) ->
        let t = Type.gentyp () in
        unify (g env (e, sp, ep)) (Type.Fun(List.map (g env) es, t)) sp ep;
        t
    | Tuple(es) -> Type.Tuple(List.map (g env) es)
    | LetTuple(xts, (e1, sp1, ep1), e2) ->
        unify (Type.Tuple(List.map snd xts)) (g env (e1, sp1, ep1)) sp1 ep1;
        g (M.add_list xts env) e2
    | Array((e1, sp1, ep1), e2) ->
        unify (g env (e1, sp1, ep1)) Type.Int sp1 ep1;
        Type.Array(g env e2)
    | Get((e1, sp1, ep1), (e2, sp2, ep2)) ->
        let t = Type.gentyp () in
        unify (Type.Array(t)) (g env (e1, sp1, ep1)) sp1 ep1;
        unify Type.Int (g env (e2, sp2, ep2)) sp2 ep2;
        t
    | Put((e1, sp1, ep1), (e2, sp2, ep2), (e3, sp3, ep3)) ->
        let t  = Type.gentyp () in
        unify (Type.Array(t)) (g env (e1, sp1, ep1)) sp1 ep1;
        unify Type.Int (g env (e2, sp2, ep2)) sp2 ep2;
        unify t (g env (e3, sp3, ep3)) sp3 ep3;
        Type.Unit
  with Unify(t1, t2, sp, ep) ->
    failwith
      (let open Lexing in
       (Printf.sprintf "type error near line %d-%d, characters %d-%d\n"
         sp.pos_lnum
         ep.pos_lnum
         (sp.pos_cnum - sp.pos_bol)
         (ep.pos_cnum - ep.pos_bol)) ^
       (Printf.sprintf
         "This expression has type %s but an expression was expected of type %s"
         (Type.string_of_type (deref_typ t2))
         (Type.string_of_type (deref_typ t1))))

let f (e, sp, ep) =
  extenv := M.empty;
  let toplevel_type = ref Type.Unit in
  unify (Type.Toplevel(toplevel_type)) (g M.empty (e, sp, ep)) sp ep;
  (match !toplevel_type with
  | Type.Unit -> ()
  | _ ->
      Printf.printf "warning: toplevel type is %s\n"
        (Type.string_of_type !toplevel_type));
  extenv := M.map deref_typ !extenv;
  deref_term (e, sp, ep)
