(* let rec change i f =
  let i = i + 1 in
  let f = if f > 0.0 then f +. 1.0 else f in
  (f, i) in
let (f, i) = change 1 1.0 in
print_int i *)

let rec fibonacci n =
  if n = 0 then 0 else
  if n = 1 then 1 else
  (fibonacci (n-1)) + (fibonacci (n-2)) in
print_int (fibonacci 5)
