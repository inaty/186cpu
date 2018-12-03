let rec reduction_2pi f =
  let p = 3.1415926 *. 2.0 in
  let rec loop1 p =
    (* if f >= p then loop1 (p *. 2.0) else p in *)
    if fless f p then p else loop1 (p *. 2.0) in
  let p = loop1 p in
  let rec loop2 f p =
    (* if f >= 3.1415926 *. 2.0 then ( *)
    if fless f (3.1415926 *. 2.0) then
      f
    else (
      (* if f >= p then loop2 (f -. p) p else loop2 f (p *. 0.5) *)
      if fless f p then loop2 f (p *. 0.5) else loop2 (f -. p) p
    ) in
  loop2 f p in
let rec kernel_cos f =
  let f2 = f *. f in
  let f4 = f2 *. f2 in
  let f6 = f2 *. f4 in
  1.0 -. (0.5 *. f2) +. (0.04166368 *. f4) -. (0.0013695068 *. f6) in
let rec kernel_sin f =
  let f2 = f *. f in
  let f3 = f *. f2 in
  let f5 = f3 *. f2 in
  let f7 = f5 *. f2 in
  f -. (0.16666668 *. f3) +. (0.008332824 *. f5) -. (0.00019587841 *. f7) in
let rec sin f =
  let flag = f in
  let f = fabs f in
  let f = reduction_2pi f in
  let (flag, f) =
    if fless f 3.1415926 then (flag, f) else (flag *. -1.0, f -. 3.1415926) in
  let (flag, f) =
    if fless f (3.1415926 *. 0.5) then (flag, f) else (flag, 3.1415926 -. f) in
  let f =
    if fless (3.1415926 *. 0.25) f then
      kernel_cos ((3.1415926 *. 0.5) -. f)
    else kernel_sin f in
  f /. flag in (* hoge *)
let rec cos f =
  let flag = 1.0 in
  let f = fabs f in
  let f = reduction_2pi f in
  let (flag, f) =
    (* if f >= 3.1415926 then (flag *. -1.0, f -. 3.1415926) else (flag, f) in *)
    if fless f 3.1415926 then (flag, f) else (flag *. -1.0, f -. 3.1415926) in
  let (flag, f) =
    (* if f >= 3.1415926 *. 0.5 then *)
    if fless f (3.1415926 *. 0.5) then
      (flag, f)
    else (flag *. -1.0, 3.1415926 -. f) in
  (* let f = if (f <= 3.1415926 *. 0.25) then kernel_cos f else kernel_sin f in *)
  let f =
    if fless (3.1415926 *. 0.25) f then
      kernel_sin ((3.1415926 *. 0.5) -. f)
    else kernel_cos f in
  f /. flag in (* hoge *)
print_float (cos 0.1); print_newline ();
print_float (sin 0.1); print_newline ();
