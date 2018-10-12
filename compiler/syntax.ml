open Printf

type position = Lexing.position
type t = exp * position * position
and exp =
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | Mul of t * t
  | Div of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

(* Syntax.expの木構造を見やすく表示、標準出力 *)
let print_syntax exp =
  let print_space indent = print_string (String.make indent ' ') in
  let rec string_of_id_type_list id_type_list =
    match id_type_list with
    | [] -> ""
    | [(id, typ)] -> "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ")"
    | (id, typ) :: id_type_list ->
        "(" ^ id ^ ", " ^ (Type.string_of_type typ) ^ ") " ^
         (string_of_id_type_list id_type_list) in
  let rec print_syntax_sub (exp, _, _) indent =
    print_space indent;
    match exp with
    | Unit -> printf "UNIT\n"
    | Bool(b) -> printf "BOOL %B\n" b
    | Int(i) -> printf "INT %d\n" i
    | Float(f) -> printf "FLOAT %f\n" f
    | Not(exp) -> printf "NOT\n"; print_syntax_sub exp (indent + 2)
    | Neg(exp) -> printf "NEG\n"; print_syntax_sub exp (indent + 2)
    | Add(exp1, exp2) ->
        printf "ADD\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Sub(exp1, exp2) ->
        printf "SUB\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Mul(exp1, exp2) ->
        printf "MUL\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Div(exp1, exp2) ->
        printf "DIV\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FNeg(exp) -> printf "FNEG\n"; print_syntax_sub exp (indent + 2)
    | FAdd(exp1, exp2) ->
        printf "FADD\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FSub(exp1, exp2) ->
        printf "FSUB\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FMul(exp1, exp2) ->
        printf "FMUL\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FDiv(exp1, exp2) ->
        printf "FDIV\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Eq(exp1, exp2) ->
        printf "EQ\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | LE(exp1, exp2) ->
        printf "LE\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | If(exp1, exp2, exp3) ->
        printf "LE\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
        print_syntax_sub exp3 (indent + 2);
    | Let((var, typ), exp1, exp2) ->
        printf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
        print_syntax_sub exp1 (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp2 (indent + 2)
    | Var(var) -> printf "VAR %s\n" var
    | LetRec({name = (fname, ftype); args = fargs; body = fexp}, exp) ->
        printf "LETREC %s (TYPE %s ARGS %s)\n"
          fname
          (Type.string_of_type ftype)
          (string_of_id_type_list fargs);
        print_syntax_sub fexp (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp (indent + 2)
    | App(exp, exps) ->
        printf "APP\n";
        print_syntax_sub exp (indent + 2);
        List.fold_left (fun u e -> print_syntax_sub e (indent + 2)) () exps
    | Tuple(exps) ->
        printf "TUPLE\n";
        List.fold_left (fun u e -> print_syntax_sub e (indent + 2)) () exps
    | LetTuple(vars, exp1, exp2) ->
        printf "LETTUPLE %s\n" (string_of_id_type_list vars);
        print_syntax_sub exp1 (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp2 (indent + 2)
    | Array(exp1, exp2) ->
        printf "ARRAY\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2)
    | Get(exp1, exp2) ->
        printf "GET\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2)
    | Put(exp1, exp2, exp3) ->
        printf "ARRAY\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
        print_syntax_sub exp3 (indent + 2) in
  print_syntax_sub exp 0
