open KNormal

let threshold = ref 50

let rec size =
  function
  | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _)
  | Let(_, e1, e2, _) | LetRec({ body = e1 }, e2, _) -> 1 + size e1 + size e2
  | LetTuple(_, _, e, _) -> 1 + size e
  | _ -> 1

let rec g env = function
  | IfEq(x, y, e1, e2, p) -> IfEq(x, y, g env e1, g env e2, p)
  | IfLE(x, y, e1, e2, p) -> IfLE(x, y, g env e1, g env e2, p)
  | Let(xt, e1, e2, p) -> Let(xt, g env e1, g env e2, p)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, p) ->
      let env = if size e1 > !threshold then env else M.add x (yts, e1) env in
      LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, p)
  | App(x, ys, p) when M.mem x env ->
      let (zts, e) = M.find x env in (* 置き換え先関数の引数ztsと本体e *)
      Format.eprintf "inlining %s@." x;
      let env' =
        List.fold_left2
          (fun env' (z, t) y -> M.add z y env') M.empty zts ys in
      Alpha.g env' e (* 置き換え *)
  | LetTuple(xts, y, e, p) -> LetTuple(xts, y, g env e, p)
  | e -> e

let f e = g M.empty e
