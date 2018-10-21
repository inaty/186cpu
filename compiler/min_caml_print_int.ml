let rec min_caml_print_int i =
  if i = 0 then print_char 48 else (
    (* '-'の出力 *)
    let i = (if i > 0 then i else (print_char 45; -i)) in
    let a = Array.create 10 0 in (* 10要素あれば32bit signedの出力には十分 *)
    let n =
      let rec min_caml_print_int_reverced_array i a idx = (
        let q = i / 10 in
        let d = i - (q * 10) in
        a.(idx) <- d;
        let idx = idx + 1 in
        if q = 0 then idx else min_caml_print_int_reverced_array q a idx) in
      min_caml_print_int_reverced_array i a 0 in
    let b = Array.create 10 0 in
    let rec min_caml_print_int_reverce a ridx b idx =
      if ridx < 0 then ()
      else (
        b.(idx) <- a.(ridx);
        min_caml_print_int_reverce a (ridx - 1) b (idx + 1)
      ) in
    (min_caml_print_int_reverce a (n - 1) b 0;
    let rec min_caml_print_int_body b idx =
      if idx < n then (
        print_char (48 + b.(idx));
        min_caml_print_int_body b (idx + 1)
      ) else () in
    (* print_char 48; *)
    min_caml_print_int_body b 0)
  ) in
min_caml_print_int (-50)
