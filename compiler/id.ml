open Printf

type t = string (* 変数名 *)
type l = L of string (* ラベル（トップレベル関数やグローバル変数を表すらしい) *)

let rec pp_list = function
  | [] -> ""
  | [x] -> x
  | x :: xs -> x ^ " " ^ pp_list xs

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s.%d" s !counter
let rec genid_n s n = if n = 0 then [] else (genid s :: genid_n s (n - 1))

let rec id_of_typ = function
  | Type.Unit -> "u"
  | Type.Bool -> "b"
  | Type.Int -> "i"
  | Type.Float -> "d"
  | Type.Fun _ -> "f"
  | Type.Tuple _ -> "t"
  | Type.Array _ -> "a"
  | Type.Var _ | Type.Toplevel _ -> assert false
let gentmp typ =
  incr counter;
  Printf.sprintf "T%s%d" (id_of_typ typ) !counter

let string_of_list l string_of =
  let rec sub l =
    match l with
    | [] -> ""
    | e :: [] -> string_of e
    | e :: l -> sprintf "%s, %s" (string_of e) (sub l) in
  sprintf "[%s]" (sub l)

let string_of_tuple_of_id_type (x, t) =
  sprintf "(%s, %s)" x (Type.string_of_type t)

let string_of_list_of_id_type xts =
  string_of_list xts string_of_tuple_of_id_type
