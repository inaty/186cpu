let rec mul10 n = n * 8 + n * 2 in
let rec div10 n =
  let rec loop l r =
    if (l + 1 = r) then l else
      let m = (l + r) / 2 in
      if (mul10 m) <= n then loop m r else loop l m in
  loop 0 26 in
let rec min_caml_print_int_inner i =
  if i = 0 then () else
    let q = div10 i in
    let d = i - (q * 8 + q * 2)  in
    min_caml_print_int_inner q; print_char (48 + d) in
let rec min_caml_print_int i =
  if i = 0 then print_char 48 else
    (* '-'の出力 *)
    let i = (if i > 0 then i else (print_char 45; -i)) in
    min_caml_print_int_inner i in
min_caml_print_int 255
