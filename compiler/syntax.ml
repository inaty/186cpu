open Printf

type p = Lexing.position * Lexing.position
type t =
  | Unit of p
  | Bool of bool * p
  | Int of int * p
  | Float of float * p
  | Not of t * p
  | Neg of t * p
  | Add of t * t * p
  | Sub of t * t * p
  | Mul of t * t * p
  | Div of t * t * p
  | FAbs of t * p
  | FNeg of t * p
  | FSqrt of t * p
  | FFloor of t * p
  | FAdd of t * t * p
  | FSub of t * t * p
  | FMul of t * t * p
  | FDiv of t * t * p
  | FtoI of t * p
  | ItoF of t * p
  | Eq of t * t * p
  | LE of t * t * p
  | If of t * t * t * p
  | Let of (Id.t * Type.t) * t * t * p
  | Var of Id.t * p
  | LetRec of fundef * t * p
  | App of t * t list * p
  | Tuple of t list * p
  | LetTuple of (Id.t * Type.t) list * t * t * p
  | Array of t * t * p
  | Get of t * t * p
  | Put of t * t * t * p
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let position_of_syntax = function
  | Unit(p) | Bool(_, p) | Int(_, p) | Float(_, p) | Not(_, p) | Neg(_, p)
  | Add(_, _, p) | Sub(_, _, p) | Mul(_, _, p) | Div(_, _, p)
  | FAbs(_, p) | FNeg(_, p) | FSqrt(_, p) | FFloor(_, p)
  | FAdd(_, _, p) | FSub(_, _, p) | FMul(_, _, p) | FDiv(_, _, p)
  | FtoI(_, p) | ItoF(_, p)
  | Eq(_, _, p) | LE(_, _, p) | If(_, _, _, p) | Let(_, _, _, p) | Var(_, p)
  | LetRec(_, _, p) | App(_, _, p) | Tuple(_, p) | LetTuple(_, _, _, p)
  | Array(_, _, p) | Get(_, _, p) | Put(_, _, _, p) ->
      p

(* Syntax.expの木構造を見やすく表示、標準出力 *)
let print_syntax exp =
  let print_space indent = print_string (String.make indent ' ') in
  let rec print_syntax_sub exp indent =
    print_space indent;
    match exp with
    | Unit(_) -> printf "UNIT\n"
    | Bool(b, _) -> printf "BOOL %B\n" b
    | Int(i ,_) -> printf "INT %d\n" i
    | Float(f ,_) -> printf "FLOAT %f\n" f
    | Not(exp ,_) -> printf "NOT\n"; print_syntax_sub exp (indent + 2)
    | Neg(exp ,_) -> printf "NEG\n"; print_syntax_sub exp (indent + 2)
    | Add(exp1, exp2 ,_) ->
        printf "ADD\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Sub(exp1, exp2 ,_) ->
        printf "SUB\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Mul(exp1, exp2 ,_) ->
        printf "MUL\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | Div(exp1, exp2 ,_) ->
        printf "DIV\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FAbs(e, _) -> printf "FABS\n"; print_syntax_sub e (indent + 2)
    | FNeg(exp ,_) -> printf "FNEG\n"; print_syntax_sub exp (indent + 2)
    | FSqrt(e, _) -> printf "FSQRT\n"; print_syntax_sub e (indent + 2)
    | FFloor(e, _) -> printf "FFloor\n"; print_syntax_sub e (indent + 2)
    | FAdd(exp1, exp2 ,_) ->
        printf "FADD\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FSub(exp1, exp2 ,_) ->
        printf "FSUB\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FMul(exp1, exp2 ,_) ->
        printf "FMUL\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FDiv(exp1, exp2 ,_) ->
        printf "FDIV\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | FtoI(e, _) -> printf "FTOI\n"; print_syntax_sub e (indent + 2)
    | ItoF(e, _) -> printf "ITOF\n"; print_syntax_sub e (indent + 2)
    | Eq(exp1, exp2 ,_) ->
        printf "EQ\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | LE(exp1, exp2 ,_) ->
        printf "LE\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
    | If(exp1, exp2, exp3 ,_) ->
        printf "LE\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
        print_syntax_sub exp3 (indent + 2);
    | Let((var, typ), exp1, exp2 ,_) ->
        printf "LET %s (TYPE %s)\n" var (Type.string_of_type typ);
        print_syntax_sub exp1 (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp2 (indent + 2)
    | Var(var ,_) -> printf "VAR %s\n" var
    | LetRec({name = (fname, ftype); args = fargs; body = fexp}, exp ,_) ->
        printf "LETREC %s (TYPE %s ARGS %s)\n"
          fname
          (Type.string_of_type ftype)
          (Id.string_of_list_of_id_type fargs);
        print_syntax_sub fexp (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp (indent + 2)
    | App(exp, exps ,_) ->
        printf "APP\n";
        print_syntax_sub exp (indent + 2);
        List.fold_left (fun u e -> print_syntax_sub e (indent + 2)) () exps
    | Tuple(exps ,_) ->
        printf "TUPLE\n";
        List.fold_left (fun u e -> print_syntax_sub e (indent + 2)) () exps
    | LetTuple(vars, exp1, exp2 ,_) ->
        printf "LETTUPLE %s\n" (Id.string_of_list_of_id_type vars);
        print_syntax_sub exp1 (indent + 2);
        print_space indent; printf "IN\n";
        print_syntax_sub exp2 (indent + 2)
    | Array(exp1, exp2 ,_) ->
        printf "ARRAY\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2)
    | Get(exp1, exp2 ,_) ->
        printf "GET\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2)
    | Put(exp1, exp2, exp3 ,_) ->
        printf "ARRAY\n";
        print_syntax_sub exp1 (indent + 2);
        print_syntax_sub exp2 (indent + 2);
        print_syntax_sub exp3 (indent + 2) in
  print_syntax_sub exp 0
