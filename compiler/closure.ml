open Printf

type closure = { entry : Id.l; actual_fv : Id.t list }
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
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec fv (e, _) =
  match e with
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | FAdd(x, y)
  | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) ->
      S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) ->
      S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) ->
      S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let rec g env known (e, sp) =
  let sp' = ref sp in
  let e' =
    match e with
    | KNormal.Unit -> Unit
    | KNormal.Int(i) -> Int(i)
    | KNormal.Float(d) -> Float(d)
    | KNormal.Neg(x) -> Neg(x)
    | KNormal.Add(x, y) -> Add(x, y)
    | KNormal.Sub(x, y) -> Sub(x, y)
    | KNormal.Mul(x, y) -> Mul(x, y)
    | KNormal.Div(x, y) -> Div(x, y)
    | KNormal.FNeg(x) -> FNeg(x)
    | KNormal.FAdd(x, y) -> FAdd(x, y)
    | KNormal.FSub(x, y) -> FSub(x, y)
    | KNormal.FMul(x, y) -> FMul(x, y)
    | KNormal.FDiv(x, y) -> FDiv(x, y)
    | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
    | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
    | KNormal.Let((x, t), e1, e2) ->
        Let((x, t), g env known e1, g (M.add x t env) known e2)
    | KNormal.Var(x) -> Var(x)
    | KNormal.LetRec({KNormal.name = (x, t);
                      KNormal.args = yts;
                      KNormal.body = e1}, e2) ->
        let toplevel_backup = !toplevel in
        let env' = M.add x t env in
        let known' = S.add x known in
        let e1' = g (M.add_list yts env') known' e1 in
        let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
        let known', e1' =
          if S.is_empty zs then known', e1' else
          (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
           Format.eprintf "function %s cannot be directly applied in fact@." x;
           toplevel := toplevel_backup;
           let e1' = g (M.add_list yts env') known e1 in
           known, e1') in
        let zs = S.elements
                   (S.diff (fv e1')
                   (S.add x (S.of_list (List.map fst yts)))) in
        let zts = List.map (fun z -> (z, M.find z env')) zs in
        toplevel := {name = (Id.L(x), t);
                     args = yts;
                     formal_fv = zts;
                     body = e1' } :: !toplevel;
        let e2' = g env' known' e2 in
        if S.mem x (fv e2') then
          MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2')
        else
          (Format.eprintf "eliminating closure(s) %s@." x;
           sp' := snd e2';
           fst e2')
    | KNormal.App(x, ys) when S.mem x known ->
        Format.eprintf "directly applying %s@." x;
        AppDir(Id.L(x), ys)
    | KNormal.App(f, xs) -> AppCls(f, xs)
    | KNormal.Tuple(xs) -> Tuple(xs)
    | KNormal.LetTuple(xts, y, e) ->
        LetTuple(xts, y, g (M.add_list xts env) known e)
    | KNormal.Get(x, y) -> Get(x, y)
    | KNormal.Put(x, y, z) -> Put(x, y, z)
    | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
    (* 外部関数適用は全部　min_caml_ がついてcallされる（ここ重要っぽい） *)
    | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys) in
  (e', !sp')

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')

(* 課題03-2のための表示関数 *)
(* kNormalの中にあるものをコピペして少し変更 *)

let print_space indent = eprintf "%s" (String.make indent ' ')

let rec string_of_id_type_list id_type_list =
  match id_type_list with
  | [] -> ""
  | [(id, typ)] -> "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ")"
  | (id, typ) :: id_type_list ->
      "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ") " ^
       (string_of_id_type_list id_type_list)

let rec print_closure_t_sub (exp, _) indent =
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
      print_closure_t_sub exp1 (indent + 2);
      print_closure_t_sub exp2 (indent + 2)
  | IfLE(var1, var2, exp1, exp2) ->
      eprintf "IFLE %s %s\n" var1 var2;
      print_closure_t_sub exp1 (indent + 2);
      print_closure_t_sub exp2 (indent + 2)
  | Let((var, typ), exp1, exp2) ->
      eprintf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
      print_closure_t_sub exp1 (indent + 2);
      print_space indent; eprintf "IN\n";
      print_closure_t_sub exp2 (indent + 2)
  | Var(var) -> eprintf "VAR %s\n" var
  | MakeCls((f, t), {entry = Id.L(lf); actual_fv = fvs}, cl_t) ->
      eprintf "MAKECLS %s (TYPE %s ENTRY %s FV %s)\n"
        f
        (Type.string_of_type t)
        lf
        (Id.pp_list fvs);
      print_space indent; eprintf "IN\n";
      print_closure_t_sub cl_t (indent + 2)
  | AppCls(f, args) -> eprintf "APPCLS %s %s\n" f (Id.pp_list args)
  | AppDir(Id.L(lf), args) -> eprintf "APPDIR %s %s\n" lf (Id.pp_list args)
  | Tuple(vars) -> eprintf "TUPLE %s\n" (Id.pp_list vars)
  | LetTuple(vars, var, exp) ->
      eprintf "LETTUPLE %s %s\n" (string_of_id_type_list vars) var;
      print_space indent; eprintf "IN\n";
      print_closure_t_sub exp (indent + 2)
  | Get(var1, var2) -> eprintf "GET %s %s\n" var1 var2
  | Put(var1, var2, var3) -> eprintf "PUT %s %s %s\n" var1 var2 var3
  | ExtArray(Id.L(la)) -> eprintf "EXTARRAY %s\n" la

let print_closure_t cl_t = print_closure_t_sub cl_t 0

let rec print_fundefs fundefs =
  match fundefs with
  | {name = (Id.L(f), t);
     args = args; formal_fv = fvs; body = body} :: fundefs ->
      eprintf "FUN %s (TYPE %s)\n" f (Type.string_of_type t);
      eprintf "ARGS %s\n" (string_of_id_type_list args);
      eprintf "FVS %s\n" (string_of_id_type_list fvs);
      eprintf "BODY\n";
      print_closure_t_sub body 2;
      print_fundefs fundefs
  | [] -> ()
