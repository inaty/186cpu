open Printf

type closure = { entry : Id.l; actual_fv : Id.t list }
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
  | FNeg of Id.t * p
  | FAdd of Id.t * Id.t * p
  | FSub of Id.t * Id.t * p
  | FMul of Id.t * Id.t * p
  | FDiv of Id.t * Id.t * p
  | IfEq of Id.t * Id.t * t * t * p
  | IfLE of Id.t * Id.t * t * t * p
  | Let of (Id.t * Type.t) * t * t * p
  | Var of Id.t * p
  | MakeCls of (Id.t * Type.t) * closure * t * p
  | AppCls of Id.t * Id.t list * p
  | AppDir of Id.l * Id.t list * p
  | Tuple of Id.t list * p
  | LetTuple of (Id.t * Type.t) list * Id.t * t * p
  | Get of Id.t * Id.t * p
  | Put of Id.t * Id.t * Id.t * p
  | ExtArray of Id.l * p
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit(_) | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x, _) | FNeg(x, _) -> S.singleton x
  | Add(x, y, _) | Sub(x, y, _) | Mul(x, y, _) | Div(x, y, _) | FAdd(x, y, _)
  | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _) | Get(x, y, _) ->
      S.of_list [x; y]
  | IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) ->
      S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, _) ->
      S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, _) -> S.of_list (x :: ys)
  | AppDir(_, xs, _) | Tuple(xs, _) -> S.of_list xs
  | LetTuple(xts, y, e, _) ->
      S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, _) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

(*
envは型環境
known : Id.t S は自由変数のないクロージャ
 *)
let rec g env known = function
  | KNormal.Unit(p) -> Unit(p)
  | KNormal.Int(i, p) -> Int(i, p)
  | KNormal.Float(d, p) -> Float(d, p)
  | KNormal.Neg(x, p) -> Neg(x, p)
  | KNormal.Add(x, y, p) -> Add(x, y, p)
  | KNormal.Sub(x, y, p) -> Sub(x, y, p)
  | KNormal.Mul(x, y, p) -> Mul(x, y, p)
  | KNormal.Div(x, y, p) -> Div(x, y, p)
  | KNormal.FNeg(x, p) -> FNeg(x, p)
  | KNormal.FAdd(x, y, p) -> FAdd(x, y, p)
  | KNormal.FSub(x, y, p) -> FSub(x, y, p)
  | KNormal.FMul(x, y, p) -> FMul(x, y, p)
  | KNormal.FDiv(x, y, p) -> FDiv(x, y, p)
  | KNormal.IfEq(x, y, e1, e2, p) ->
      IfEq(x, y, g env known e1, g env known e2, p)
  | KNormal.IfLE(x, y, e1, e2, p) ->
      IfLE(x, y, g env known e1, g env known e2, p)
  | KNormal.Let((x, t), e1, e2, p) ->
      Let((x, t), g env known e1, g (M.add x t env) known e2, p)
  | KNormal.Var(x, p) -> Var(x, p)
  | KNormal.LetRec({KNormal.name = (x, t);
                    KNormal.args = yts;
                    KNormal.body = e1}, e2, p) ->
      (* xが自由変数なしと仮定して試す *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 確認、関数本体e1'から引数を除いたものをzsとする *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* 自由変数が残ってたらダメ *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      (* 必要な自由変数 *)
      let zs =
        S.elements
          (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in
      let zts = List.map (fun z -> (z, M.find z env')) zs in
      toplevel := {name = (Id.L(x), t);
                   args = yts;
                   formal_fv = zts;
                   body = e1' } :: !toplevel;
      let e2' = g env' known' e2 in
      (* 直接適用の場合はfvに引っかからないので、xが変数として出現しているか検査できる *)
      if S.mem x (fv e2') then
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2', p)
      else
        (Format.eprintf "eliminating closure(s) %s@." x; e2')
  | KNormal.App(x, ys, p) when S.mem x known ->
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys, p)
  | KNormal.App(f, xs, p) -> AppCls(f, xs, p)
  | KNormal.Tuple(xs, p) -> Tuple(xs, p)
  | KNormal.LetTuple(xts, y, e, p) ->
      LetTuple(xts, y, g (M.add_list xts env) known e, p)
  | KNormal.Get(x, y, p) -> Get(x, y, p)
  | KNormal.Put(x, y, z, p) -> Put(x, y, z, p)
  | KNormal.ExtArray(x, p) -> ExtArray(Id.L(x), p)
  | KNormal.ExtFunApp(x, ys, p) -> AppDir(Id.L("min_caml_" ^ x), ys, p)

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

let rec print_closure_t_sub exp indent =
  print_space indent;
  match exp with
  | Unit(_) -> eprintf "UNIT\n"
  | Int(i, _) -> eprintf "INT %d\n" i
  | Float(f, _) -> eprintf "FLOAT %f\n" f
  | Neg(var, _) -> eprintf "NEG %s\n" var
  | Add(var1, var2, _) -> eprintf "ADD %s %s\n" var1 var2;
  | Sub(var1, var2, _) -> eprintf "SUB %s %s\n" var1 var2;
  | Mul(var1, var2, _) -> eprintf "MUL %s %s\n" var1 var2;
  | Div(var1, var2, _) -> eprintf "DIV %s %s\n" var1 var2;
  | FNeg(var, _) -> eprintf "FNEG %s\n" var
  | FAdd(var1, var2, _) -> eprintf "FADD %s %s\n" var1 var2;
  | FSub(var1, var2, _) -> eprintf "FSUB %s %s\n" var1 var2;
  | FMul(var1, var2, _) -> eprintf "FMUL %s %s\n" var1 var2;
  | FDiv(var1, var2, _) -> eprintf "FDIV %s %s\n" var1 var2;
  | IfEq(var1, var2, exp1, exp2, _) ->
      eprintf "IFEQ %s %s\n" var1 var2;
      print_closure_t_sub exp1 (indent + 2);
      print_closure_t_sub exp2 (indent + 2)
  | IfLE(var1, var2, exp1, exp2, _) ->
      eprintf "IFLE %s %s\n" var1 var2;
      print_closure_t_sub exp1 (indent + 2);
      print_closure_t_sub exp2 (indent + 2)
  | Let((var, typ), exp1, exp2, _) ->
      eprintf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
      print_closure_t_sub exp1 (indent + 2);
      print_space indent; eprintf "IN\n";
      print_closure_t_sub exp2 (indent + 2)
  | Var(var, _) -> eprintf "VAR %s\n" var
  | MakeCls((f, t), {entry = Id.L(lf); actual_fv = fvs}, cl_t, _) ->
      eprintf "MAKECLS %s (TYPE %s ENTRY %s FV %s)\n"
        f
        (Type.string_of_type t)
        lf
        (Id.pp_list fvs);
      print_space indent; eprintf "IN\n";
      print_closure_t_sub cl_t (indent + 2)
  | AppCls(f, args, _) -> eprintf "APPCLS %s %s\n" f (Id.pp_list args)
  | AppDir(Id.L(lf), args, _) -> eprintf "APPDIR %s %s\n" lf (Id.pp_list args)
  | Tuple(vars, _) -> eprintf "TUPLE %s\n" (Id.pp_list vars)
  | LetTuple(vars, var, exp, _) ->
      eprintf "LETTUPLE (%s) %s\n" (string_of_id_type_list vars) var;
      print_space indent; eprintf "IN\n";
      print_closure_t_sub exp (indent + 2)
  | Get(var1, var2, _) -> eprintf "GET %s %s\n" var1 var2
  | Put(var1, var2, var3, _) -> eprintf "PUT %s %s %s\n" var1 var2 var3
  | ExtArray(Id.L(la), _) -> eprintf "EXTARRAY %s\n" la

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
