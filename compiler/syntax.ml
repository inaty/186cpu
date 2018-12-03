open Format

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

let ename = function
  | Unit _ -> "Unit"
  | Bool _ -> "Bool"
  | Int _ -> "Int"
  | Float _ -> "Float"
  | Not _ -> "Not"
  | Neg _ -> "Neg"
  | Add _ -> "Add"
  | Sub _ -> "Sub"
  | Mul _ -> "Mul"
  | Div _ -> "Div"
  | FAbs _ -> "FAbs"
  | FNeg _ -> "FNeg"
  | FSqrt _ -> "FSqrt"
  | FFloor _ -> "FFloor"
  | FAdd _ -> "FAdd"
  | FSub _ -> "FSub"
  | FMul _ -> "FMul"
  | FDiv _ -> "FDiv"
  | FtoI _ -> "FtoI"
  | ItoF _ -> "ItoF"
  | Eq _ -> "Eq"
  | LE _ -> "LE"
  | If _ -> "If"
  | Let _ -> "Let"
  | Var _ -> "Var"
  | LetRec _ -> "LetRec"
  | App _ -> "App"
  | Tuple _ -> "Tuple"
  | LetTuple _ -> "LetTuple"
  | Array _ -> "Array"
  | Get _ -> "Get"
  | Put _ -> "Put"

let rec pr_e ppf e =
  match e with
  | Unit (_) -> fprintf ppf "%s" (ename e)
  | Bool (b, _) -> fprintf ppf "%s %B" (ename e) b
  | Int(i, _) -> fprintf ppf "%s %d" (ename e) i
  | Float(f, _) -> fprintf ppf "%s %f" (ename e) f
  | Not(e1, _) | Neg(e1, _) | FAbs(e1, _) | FNeg(e1, _) | FSqrt(e1, _)
  | FFloor(e1, _) | FtoI(e1, _) | ItoF(e1, _) ->
      fprintf ppf "@[<v 2>%s@,%a@]" (ename e) pr_e e1
  | Add(e1, e2, _) | Sub(e1, e2, _) | Mul(e1, e2, _) | Div(e1, e2, _)
  | FAdd(e1, e2, _) | FSub(e1, e2, _) | FMul(e1, e2, _) | FDiv(e1, e2, _)
  | Eq(e1, e2, _) | LE(e1, e2, _) | Array(e1, e2, _) | Get(e1, e2, _) ->
      fprintf ppf "@[<v 2>%s@,%a@,%a@]" (ename e) pr_e e1 pr_e e2
  | If(e1, e2, e3, _) ->
      fprintf ppf "@[<v 2>If@,%a@]" pr_e e1;
      fprintf ppf "@[<v 2>Then@,%a@]" pr_e e2;
      fprintf ppf "@[<v 2>Else@,%a@]" pr_e e3
  | Let(xt, e1, e2, _) ->
      fprintf ppf "@[<v 2>Let@,%a@,%a@,@]" Id.pr_xt xt pr_e e1;
      fprintf ppf "@[<v 2>In@,%a@]" pr_e e2
  | Var(x, _) -> fprintf ppf "Var %s" x
  | LetRec({name = xt; args = xts; body = e1}, e2, _) ->
      fprintf ppf "@[<v 2>Fundef";
      fprintf ppf "@[<v 2>Name@,%a@]" Id.pr_xt xt;
      fprintf ppf "@[<v 2>Args@,%a@]" Id.pr_xts xts;
      fprintf ppf "@[<v 2>Body@,%a@]@]" pr_e e1;
      fprintf ppf "@[<v 2>In@,%a@]" pr_e e2
  | App(e1, es, _) -> fprintf ppf "@[<v 2>App@,%a@,%a@]" pr_e e1 pr_es es
  | Tuple(es, _) -> fprintf ppf "@[<v 2>]Tuple@,%a" pr_es es
  | LetTuple(xts, e1, e2, _) ->
      fprintf ppf "@[<v 2>LetTuple@,%a@,%a@,@]" Id.pr_xts xts pr_e e1;
      fprintf ppf "@[<v 2>In@,%a@]" pr_e e2
  | Put(e1, e2, e3, _) ->
      fprintf ppf "@[<v 2>%s@,%a@,%a@,%a]" (ename e) pr_e e1 pr_e e2 pr_e e3
(* boxの中で使う用、各eを@,で区切りながら出力 *)
and pr_es ppf = function
  | [] -> fprintf ppf "()"
  | e :: [] -> fprintf ppf "%a" pr_e e
  | e :: es -> fprintf ppf "%a@,%a" pr_e e pr_es es

let print_syntax e = eprintf "%a@." pr_e e
