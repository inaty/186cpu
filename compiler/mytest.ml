let rec loop n f =
  if n = 0 then () else (
    print_float (cos f);
    loop (n - 1) (f +. 0.1)
  ) in
loop 20 (-1.0)
