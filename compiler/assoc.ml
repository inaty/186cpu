(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f = function
  | IfEq(x, y, e1, e2, p) -> IfEq(x, y, f e1, f e2, p)
  | IfLE(x, y, e1, e2, p) -> IfLE(x, y, f e1, f e2, p)
  | Let(xt, e1, e2, p) ->
      let rec insert = function
        | Let(yt, e3, e4, p) -> Let(yt, e3, insert e4, p)
        | LetRec(fundefs, e, p) -> LetRec(fundefs, insert e, p)
        | LetTuple(yts, z, e, p) -> LetTuple(yts, z, insert e, p)
        | e -> Let(xt, e, f e2, p) in (* ここで挟み込む *)
      insert (f e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, p) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2, p)
  | LetTuple(xts, y, e, p) -> LetTuple(xts, y, f e, p)
  | e -> e
