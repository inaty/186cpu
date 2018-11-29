open KNormal

(*
let x = y in x + y ->
y + y
 *)

let find x env = try M.find x env with Not_found -> x

let rec g env = function
  | Unit(_) | Int(_) | Float(_) as e -> e
  | Neg(x, p) -> Neg(find x env, p)
  | Add(x, y, p) -> Add(find x env, find y env, p)
  | Sub(x, y, p) -> Sub(find x env, find y env, p)
  | Mul(x, y, p) -> Mul(find x env, find y env, p)
  | Div(x, y, p) -> Div(find x env, find y env, p)
  | FAbs(x, p) -> FAbs(find x env, p)
  | FNeg(x, p) -> FNeg(find x env, p)
  | FAdd(x, y, p) -> FAdd(find x env, find y env, p)
  | FSub(x, y, p) -> FSub(find x env, find y env, p)
  | FMul(x, y, p) -> FMul(find x env, find y env, p)
  | FDiv(x, y, p) -> FDiv(find x env, find y env, p)
  | IfEq(x, y, e1, e2, p) -> IfEq(find x env, find y env, g env e1, g env e2, p)
  | IfLE(x, y, e1, e2, p) -> IfLE(find x env, find y env, g env e1, g env e2, p)
  | Let((x, t), e1, e2, p) ->
      (match g env e1 with
      | Var(y, p) ->
          Format.eprintf "beta-reducing %s = %s@." x y;
          g (M.add x y env) e2
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2', p))
  | LetRec({ name = xt; args = yts; body = e1 }, e2, p) ->
      LetRec({ name = xt; args = yts; body = g env e1 }, g env e2, p)
  | Var(x, p) -> Var(find x env, p)
  | Tuple(xs, p) -> Tuple(List.map (fun x -> find x env) xs, p)
  | LetTuple(xts, y, e, p) -> LetTuple(xts, find y env, g env e, p)
  | Get(x, y, p) -> Get(find x env, find y env, p)
  | Put(x, y, z, p) -> Put(find x env, find y env, find z env, p)
  | App(x, xs, p) -> App(find x env, List.map (fun x -> find x env) xs, p)
  | ExtArray(x, p) -> ExtArray(x, p)
  | ExtFunApp(x, ys, p) -> ExtFunApp(x, List.map (fun y -> find y env) ys, p)

let f = g M.empty
