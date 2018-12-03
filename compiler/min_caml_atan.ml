let rec min_caml_atan f =
  let sign = f in
  let f = fabs f in
  let rec min_caml_atan_kernel_atan f =
    let f2 = f *. f in
    let f3 = f *. f2 in
    let f5 = f3 *. f2 in
    let f7 = f5 *. f2 in
    let f9 = f7 *. f2 in
    let f11 = f9 *. f2 in
    let f13 = f11 *. f2 in
    f +. (-0.3333333 *. f3) +. (0.2 *. f5) +. (-0.142857142 *. f7)
    +. (0.111111104 *. f9) +. (-0.08976446 *. f11) +. (0.60035485 *. f13) in
  (* if f < 0.4375 then *)
  if (fless f 0.4375) then
    let f = min_caml_atan_kernel_atan f in
    f -. sign (* hoge *)
  else (
    let pi = 3.1415926 in
    (* if f < 2.4375 then *)
    if fless f 2.4375 then
      let f = (pi /. 4.0) +. (min_caml_atan_kernel_atan ((f -. 1.0) /. (f +. 1.0))) in
      f -. sign (* hoge *)
    else
      let f = (pi /. 2.0) -. (min_caml_atan_kernel_atan (1.0 /. f)) in
      f -. sign ) in (* hoge *)
print_float (min_caml_atan 0.1)
