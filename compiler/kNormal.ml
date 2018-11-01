open Printf

type t = exp * Lexing.position
and exp =
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec fv (e, sp) =
  match e with
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | FAdd(x, y) | FSub(x, y)
  | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) ->
      S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let ((exp, sp), t) genbody =
  match exp with
  | Var(x) -> genbody x
  | _ ->
      let x = Id.gentmp t in
      let bodykNormal_t, bodyt = genbody x in
      (Let((x, t), (exp, sp), bodykNormal_t), sp), bodyt

let rec g env (e, sp, ep) =
  match e with
  | Syntax.Unit -> (Unit, sp), Type.Unit
  | Syntax.Bool(b) -> (Int(if b then 1 else 0), sp), Type.Int
  | Syntax.Int(i) -> (Int(i), sp), Type.Int
  | Syntax.Float(d) -> (Float(d), sp), Type.Float
  | Syntax.Not(e) ->
      g env
        (Syntax.If(e,
                   (Syntax.Bool(false), sp, ep),
                   (Syntax.Bool(true), sp, ep)), sp, ep)
  | Syntax.Neg(e) ->
      insert_let (g env e)
        (fun x -> (Neg(x), sp), Type.Int)
  | Syntax.Add(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Add(x, y), sp), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Sub(x, y), sp), Type.Int))
  | Syntax.Mul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Mul(x, y), sp), Type.Int))
  | Syntax.Div(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Div(x, y), sp), Type.Int))
  | Syntax.FNeg(e) ->
      insert_let (g env e)
        (fun x -> (FNeg(x), sp), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FAdd(x, y), sp), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FSub(x, y), sp), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FMul(x, y), sp), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FDiv(x, y), sp), Type.Float))
  | Syntax.Eq _ | Syntax.LE _ as cmp ->
      g env
        (Syntax.If((cmp, sp, ep),
                   (Syntax.Bool(true), sp, ep),
                   (Syntax.Bool(false), sp, ep)), sp, ep)
  | Syntax.If((Syntax.Not(e1), _, _), e2, e3) ->
      g env ((Syntax.If(e1, e3, e2)), sp, ep)
  | Syntax.If((Syntax.Eq(e1, e2), _, _), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfEq(x, y, e3', e4'), sp), t3))
  | Syntax.If((Syntax.LE(e1, e2), _, _), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfLE(x, y, e3', e4'), sp), t3))
  | Syntax.If(e1, e2, e3) ->
    g env
      (Syntax.If((Syntax.Eq(e1,
                            (Syntax.Bool(false), sp, ep)), sp, ep),
                 e3,
                 e2), sp, ep)
  | Syntax.Let((x, t), e1, e2) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      (Let((x, t), e1', e2'), sp), t2
  | Syntax.Var(x) when M.mem x env -> (Var(x), sp), M.find x env
  | Syntax.Var(x) ->
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> (ExtArray(x), sp), t
      | t ->
          failwith
            (let open Lexing in
             (Printf.sprintf
               "external variable %s does not have an array type, type %s\n"
               x (Type.string_of_type t)) ^
             (Printf.sprintf "line %d-%d, characters %d-%d"
                sp.pos_lnum ep.pos_lnum
                (sp.pos_cnum - sp.pos_bol) (ep.pos_cnum - ep.pos_bol))))
  | Syntax.LetRec({Syntax.name = (x, t);
                   Syntax.args = yts;
                   Syntax.body = e1 }, e2) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      (LetRec({ name = (x, t); args = yts; body = e1' }, e2'), sp), t2
  | Syntax.App((Syntax.Var(f), _, _), e2s) when not (M.mem f env) ->
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function
            | [] -> (ExtFunApp(f, xs), sp), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function
                | [] -> (App(f, xs), sp), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function
        | [] -> (Tuple(xs), sp), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          (LetTuple(xts, y, e2'), sp), t2)
  | Syntax.Array(num_syntax_t, el_syntax_t) ->
      let bodygen x =
        let num_kNormal_t, el_t = g env el_syntax_t in
        let bodygen' y =
          let l =
            match el_t with
            | Type.Float -> "create_float_array"
            | _ -> "create_array" in
          (ExtFunApp(l, [x; y]), sp), Type.Array(el_t) in
        insert_let (num_kNormal_t, el_t) bodygen' in
      insert_let (g env num_syntax_t) bodygen
      (* insert_let (g env num_syntax_t)
        (fun x ->
          let _, t2 as g_e2 = g env el_syntax_t in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              (ExtFunApp(l, [x; y]), sp), Type.Array(t2))) *)
  | Syntax.Get(e1, e2) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> (Get(x, y), sp), t))
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> (Put(x, y, z), sp), Type.Unit)))

let print_space indent = eprintf "%s" (String.make indent ' ')

let rec string_of_id_type_list id_type_list =
  match id_type_list with
  | [] -> ""
  | [(id, typ)] -> "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ")"
  | (id, typ) :: id_type_list ->
      "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ") " ^
       (string_of_id_type_list id_type_list)

let rec print_kNormal_sub (exp, _) indent =
  print_space indent;
  match exp with
  | Unit -> eprintf "UNIT\n"
  | Int(i) -> eprintf "INT %d\n" i
  | Float(f) -> eprintf "FLOAT %f\n" f
  | Neg(var) -> eprintf "NEG %s\n" var
  | Add(var1, var2) -> eprintf "ADD %s %s\n" var1 var2;
  | Sub(var1, var2) -> eprintf "SUB %s %s\n" var1 var2;
  | Mul(var1, var2) -> eprintf "MUL %s %s\n" var1 var2;
  | Div(var1, var2) -> eprintf "DIV %s %s\n" var1 var2;
  | FNeg(var) -> eprintf "FNEG %s\n" var
  | FAdd(var1, var2) -> eprintf "FADD %s %s\n" var1 var2;
  | FSub(var1, var2) -> eprintf "FSUB %s %s\n" var1 var2;
  | FMul(var1, var2) -> eprintf "FMUL %s %s\n" var1 var2;
  | FDiv(var1, var2) -> eprintf "FDIV %s %s\n" var1 var2;
  | IfEq(var1, var2, exp1, exp2) ->
      eprintf "IFEQ %s %s\n" var1 var2;
      print_kNormal_sub exp1 (indent + 2);
      print_kNormal_sub exp2 (indent + 2)
  | IfLE(var1, var2, exp1, exp2) ->
      eprintf "IFLE %s %s\n" var1 var2;
      print_kNormal_sub exp1 (indent + 2);
      print_kNormal_sub exp2 (indent + 2)
  | Let((var, typ), exp1, exp2) ->
      eprintf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
      print_kNormal_sub exp1 (indent + 2);
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp2 (indent + 2)
  | Var(var) -> eprintf "VAR %s\n" var
  | LetRec({name = (fname, ftype); args = fargs; body = fexp}, exp) ->
      eprintf "LETREC %s (TYPE %s ARGS %s)\n"
        fname
        (Type.string_of_type ftype)
        (string_of_id_type_list fargs);
      print_kNormal_sub fexp (indent + 2);
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp (indent + 2)
  | App(fname, args) -> eprintf "APP %s %s\n" fname (Id.pp_list args)
  | Tuple(vars) -> eprintf "TUPLE %s\n" (Id.pp_list vars)
  | LetTuple(vars, var, exp) ->
      eprintf "LETTUPLE %s %s\n" (string_of_id_type_list vars) var;
      print_space indent; eprintf "IN\n";
      print_kNormal_sub exp (indent + 2)
  | Get(var1, var2) -> eprintf "GET %s %s\n" var1 var2
  | Put(var1, var2, var3) -> eprintf "PUT %s %s %s\n" var1 var2 var3
  | ExtArray(var) -> eprintf "EXTARRAY %s\n" var
  | ExtFunApp(var, vars) -> eprintf "EXTFUNAPP %s %s\n" var (Id.pp_list vars)

let print_kNormal exp = print_kNormal_sub exp 0

let f e = fst (g M.empty e)
