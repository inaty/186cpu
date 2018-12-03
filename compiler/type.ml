open Format

type t =
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref
  | Toplevel of t ref

let gentyp () = Var(ref None)

let rec pr_ts d ppf = function
  | [] -> fprintf ppf "()"
  | t :: [] -> fprintf ppf "%a" pr_t t
  | t :: ts -> fprintf ppf "%a%s%a" pr_t t d (pr_ts d) ts
and pr_t ppf = function
  | Unit -> fprintf ppf "unit"
  | Bool -> fprintf ppf "bool"
  | Int -> fprintf ppf "int"
  | Float -> fprintf ppf "float"
  | Fun(ts, t) -> fprintf ppf "(%a -> %a)" (pr_ts " -> ") ts pr_t t
  | Tuple(ts) -> fprintf ppf "(%a)" (pr_ts " * ") ts
  | Array(t) -> fprintf ppf "%a array" pr_t t
  | Var({contents = Some(t)}) -> fprintf ppf "var(%a)" pr_t t
  | Var({contents = None}) -> fprintf ppf "var(none)"
  | Toplevel({contents = t}) -> fprintf ppf "toplevel(%a)" pr_t t

let string_of_type t = asprintf "%a" pr_t t
