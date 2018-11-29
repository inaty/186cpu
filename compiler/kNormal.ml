open Printf

type p = Lexing.position * Lexing.position
type t =
  | Unit of p
  | Int of int * p
  | Float of float * p
  | Neg of Id.t * p
  | Add of Id.t * Id.t * p
  | Sub of Id.t * Id.t * p
  | Mul of Id.t * Id.t * p
  | Div of Id.t * Id.t * p
  | FAbs of Id.t * p
  | FNeg of Id.t * p
  | FAdd of Id.t * Id.t * p
  | FSub of Id.t * Id.t * p
  | FMul of Id.t * Id.t * p
  | FDiv of Id.t * Id.t * p
  | IfEq of Id.t * Id.t * t * t * p
  | IfLE of Id.t * Id.t * t * t * p
  | Let of (Id.t * Type.t) * t * t * p
  | Var of Id.t * p
  | LetRec of fundef * t * p
  | App of Id.t * Id.t list * p
  | Tuple of Id.t list * p
  | LetTuple of (Id.t * Type.t) list * Id.t * t * p
  | Get of Id.t * Id.t * p
  | Put of Id.t * Id.t * Id.t * p
  | ExtArray of Id.t * p
  | ExtFunApp of Id.t * Id.t list * p
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let dp = (Lexing.dummy_pos, Lexing.dummy_pos)

let rec fv = function
  | Unit(_) | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x, _) | FAbs(x, _) | FNeg(x, _) -> S.singleton x
  | Add(x, y, _) | Sub(x, y, _) | Mul(x, y, _) | Div(x, y, _)
  | FAdd(x, y, _) | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _)
  | Get(x, y, _) ->
      S.of_list [x; y]
  | IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) ->
      S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | LetRec({name = (x, t); args = yts; body = e1}, e2, _) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys, _) -> S.of_list (x :: ys)
  | Tuple(xs, _) | ExtFunApp(_, xs, _) -> S.of_list xs
  | Put(x, y, z, _) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e, _) ->
      S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

(*
let x = e in k e を実現する
k : Id.t -> KNormal.t * Type.t
 *)
let insert_let (e, t) k =
  match e with
  | Var(x, p) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      Let((x, t), e, e', dp), t'

let rec g env = function
  | Syntax.Unit(p) -> Unit(p), Type.Unit
  | Syntax.Bool(b, p) -> Int((if b then 1 else 0), p), Type.Int
  | Syntax.Int(i, p) -> Int(i, p), Type.Int
  | Syntax.Float(d, p) -> Float(d, p), Type.Float
  | Syntax.Not(e, p) ->
      g env (Syntax.If(e, Syntax.Bool(false, p), Syntax.Bool(true, p), p))
  | Syntax.Neg(e, p) ->
      insert_let (g env e)
        (fun x -> (Neg(x, p), Type.Int))
  | Syntax.Add(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Add(x, y, p), Type.Int)))
  | Syntax.Sub(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Sub(x, y ,p), Type.Int)))
  | Syntax.Mul(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Mul(x, y, p), Type.Int)))
  | Syntax.Div(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Div(x, y, p), Type.Int)))
  | Syntax.FAbs(e, p) ->
      insert_let (g env e)
        (fun x -> (FAbs(x, p), Type.Float))
  | Syntax.FNeg(e, p) ->
      insert_let (g env e)
        (fun x -> (FNeg(x, p), Type.Float))
  | Syntax.FAdd(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FAdd(x, y, p), Type.Float)))
  | Syntax.FSub(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FSub(x, y, p), Type.Float)))
  | Syntax.FMul(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FMul(x, y, p), Type.Float)))
  | Syntax.FDiv(e1, e2, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FDiv(x, y, p), Type.Float)))
  | Syntax.Eq _ | Syntax.LE _ as cmp ->
      let p = Syntax.position_of_syntax cmp in
      g env (Syntax.If(cmp, Syntax.Bool(true, p), Syntax.Bool(false, p), p))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, p) ->
      g env (Syntax.If(e1, e3, e2, p))
  | Syntax.If(Syntax.Eq(e1, e2, _), e3, e4, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfEq(x, y, e3', e4', p), t3)))
  | Syntax.If(Syntax.LE(e1, e2, _), e3, e4, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfLE(x, y, e3', e4', p), t3)))
  | Syntax.If(e1, e2, e3, p) ->
      g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false, p), p), e3, e2, p))
  | Syntax.Let((x, t), e1, e2, p) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2', p), t2
  | Syntax.Var(x, p) when M.mem x env -> Var(x, p), M.find x env
  | Syntax.Var(x, p) -> (* これまでにletで宣言されていない = 外部変数 *)
      begin match M.find x !Typing.extenv with
      | Type.Array(_) as t -> ExtArray(x, p), t
      | t ->
          let sp, ep = p in
          let open Lexing in
          failwith
            ((Printf.sprintf
               "external variable %s does not have an array type, type %s\n"
                 x (Type.string_of_type t))
             ^ (Printf.sprintf "line %d-%d, characters %d-%d"
                  sp.pos_lnum
                  ep.pos_lnum
                  (sp.pos_cnum - sp.pos_bol)
                  (ep.pos_cnum - ep.pos_bol)))
      end
  | Syntax.LetRec({Syntax.name = (x, t);
                   Syntax.args = yts;
                   Syntax.body = e1}, e2, p) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({name = (x, t); args = yts; body = e1'}, e2', p), t2
  | Syntax.App(Syntax.Var(f, _), e2s, p) when not (M.mem f env) ->
      begin match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function
            | [] -> ExtFunApp(f, xs, p), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s
      | _ -> failwith "KNormal.g"
      end
  | Syntax.App(e1, e2s, p) ->
      begin match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function
                | [] -> App(f, xs, p), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s)
      | _ -> failwith "KNormal.g"
      end
  | Syntax.Tuple(es, p) ->
      let rec bind xs ts = function
        | [] -> Tuple(xs, p), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, p) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          LetTuple(xts, y, e2', p), t2)
  (* e1が要素数、e2が中身 *)
  | Syntax.Array(e1, e2, p) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              ExtFunApp(l, [x; y], p), Type.Array(t2)))
  | Syntax.Get(e1, e2, p) ->
      begin match g env e1 with
      | _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> Get(x, y, p), t))
      | _ -> failwith "KNormal.g"
      end
  | Syntax.Put(e1, e2, e3, p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> Put(x, y, z, p), Type.Unit)))

let print_space indent = eprintf "%s" (String.make indent ' ')

let rec string_of_id_type_list id_type_list =
  match id_type_list with
  | [] -> ""
  | [(id, typ)] -> "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ")"
  | (id, typ) :: id_type_list ->
      "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ") " ^
       (string_of_id_type_list id_type_list)

let rec print_kNormal_sub exp indent =
  print_space indent;
  match exp with
  | Unit(_, _) -> eprintf "UNIT\n"
  | Int(i, _) -> eprintf "INT %d\n" i
  | Float(f, _) -> eprintf "FLOAT %f\n" f
  | Neg(var, _) -> eprintf "NEG %s\n" var
  | Add(var1, var2, _) -> eprintf "ADD %s %s\n" var1 var2;
  | Sub(var1, var2, _) -> eprintf "SUB %s %s\n" var1 var2;
  | Mul(var1, var2, _) -> eprintf "MUL %s %s\n" var1 var2;
  | Div(var1, var2, _) -> eprintf "DIV %s %s\n" var1 var2;
  | FAbs(x, _) -> eprintf "FNEG %s\n" x
  | FNeg(var, _) -> eprintf "FNEG %s\n" var
  | FAdd(var1, var2, _) -> eprintf "FADD %s %s\n" var1 var2;
  | FSub(var1, var2, _) -> eprintf "FSUB %s %s\n" var1 var2;
  | FMul(var1, var2, _) -> eprintf "FMUL %s %s\n" var1 var2;
  | FDiv(var1, var2, _) -> eprintf "FDIV %s %s\n" var1 var2;
  | IfEq(var1, var2, exp1, exp2, _) ->
      eprintf "IFEQ %s %s\n" var1 var2;
      print_kNormal_sub exp1 (indent + 2);
      print_kNormal_sub exp2 (indent + 2)
  | IfLE(var1, var2, exp1, exp2, _) ->
      eprintf "IFLE %s %s\n" var1 var2;
      print_kNormal_sub exp1 (indent + 2);
      print_kNormal_sub exp2 (indent + 2)
  | Let((var, typ), exp1, exp2, _) ->
      eprintf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
      print_kNormal_sub exp1 (indent + 2);
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp2 (indent + 2)
  | Var(var, _) -> eprintf "VAR %s\n" var
  | LetRec({name = (fname, ftype); args = fargs; body = fexp}, exp, _) ->
      eprintf "LETREC %s (TYPE %s ARGS %s)\n"
        fname
        (Type.string_of_type ftype)
        (string_of_id_type_list fargs);
      print_kNormal_sub fexp (indent + 2);
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp (indent + 2)
  | App(fname, args, _) -> eprintf "APP %s %s\n" fname (Id.pp_list args)
  | Tuple(vars, _) -> eprintf "TUPLE %s\n" (Id.pp_list vars)
  | LetTuple(vars, var, exp, _) ->
      eprintf "LETTUPLE %s %s\n" (string_of_id_type_list vars) var;
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp (indent + 2)
  | Get(var1, var2, _) -> eprintf "GET %s %s\n" var1 var2
  | Put(var1, var2, var3, _) -> eprintf "PUT %s %s %s\n" var1 var2 var3
  | ExtArray(var, _) -> eprintf "EXTARRAY %s\n" var
  | ExtFunApp(var, vars, _) -> eprintf "EXTFUNAPP %s %s\n" var (Id.pp_list vars)

let print_kNormal exp = print_kNormal_sub exp 0

let f e = fst (g M.empty e)
