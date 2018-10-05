open Printf

type t = (* MinCaml�η���ɽ�������ǡ����� (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None) (* ���������ѿ������� *)

(* 追加 *)
let rec string_of_type typ =
  match typ with
  | Unit -> "unit"
  | Bool -> "bool"
  | Int -> "int"
  | Float -> "float"
  | Fun(types, typ) ->
      "(fun" ^
      (List.fold_left (fun s t -> s ^ " " ^ (string_of_type t)) "" types) ^
      " -> " ^
      (string_of_type typ) ^
      ")"
  | Tuple(types) ->
      "(tuple" ^
      (List.fold_left (fun s t -> s ^ " " ^ (string_of_type t)) "" types) ^
      ")"
  | Array(typ) -> "array " ^ (string_of_type typ)
  | Var(typeref) ->
      match !typeref with
      | Some(typ) -> "var " ^ (string_of_type typ)
      | None -> "var none"
