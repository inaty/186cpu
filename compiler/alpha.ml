(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

(* envは変換前の変数名と変換後の変数名の対応 *)
let rec g env = function
  | Unit(_) | Int(_) | Float(_) as e -> e
  | Neg(x, p) -> Neg(find x env, p)
  | Add(x, y, p) -> Add(find x env, find y env, p)
  | Sub(x, y, p) -> Sub(find x env, find y env, p)
  | Mul(x, y, p) -> Mul(find x env, find y env, p)
  | Div(x, y, p) -> Div(find x env, find y env, p)
  | FAbs(x, p) -> FAbs(find x env, p)
  | FNeg(x, p) -> FNeg(find x env, p)
  | FSqrt(x, p) -> FSqrt(find x env, p)
  | FFloor(x, p) -> FFloor(find x env, p)
  | FAdd(x, y, p) -> FAdd(find x env, find y env, p)
  | FSub(x, y, p) -> FSub(find x env, find y env, p)
  | FMul(x, y, p) -> FMul(find x env, find y env, p)
  | FDiv(x, y, p) -> FDiv(find x env, find y env, p)
  | FtoI(x, p) -> FtoI(find x env, p)
  | ItoF(x, p) -> ItoF(find x env, p)
  | IfEq(x, y, e1, e2, p) -> IfEq(find x env, find y env, g env e1, g env e2, p)
  | IfLE(x, y, e1, e2, p) -> IfLE(find x env, find y env, g env e1, g env e2, p)
  | Let((x, t), e1, e2, p) ->
      let x' = Id.genid x in
      Let((x', t), g env e1, g (M.add x x' env) e2, p)
  | Var(x, p) -> Var(find x env, p)
  | LetRec({name = (x, t); args = yts; body = e1}, e2, p) ->
      (* 置き換え *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      (* LetRec組み立て *)
      let (x, t) = (find x env, t) in
      let yts = List.map (fun (y, t) -> (find y env', t)) yts in
      LetRec({name = (x, t); args = yts; body = g env' e1}, g env e2, p)
  | App(x, ys, p) -> App(find x env, List.map (fun y -> find y env) ys, p)
  | Tuple(xs, p) -> Tuple(List.map (fun x -> find x env) xs, p)
  | LetTuple(xts, y, e, p) ->
      (* 置き換え *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      (* LetTuple組み立て *)
      let xts = List.map (fun (x, t) -> (find x env', t)) xts in
      LetTuple(xts, find y env, g env' e, p)
  | Get(x, y, p) -> Get(find x env, find y env, p)
  | Put(x, y, z, p) -> Put(find x env, find y env, find z env, p)
  | ExtArray(x, p) -> ExtArray(x, p)
  | ExtFunApp(x, ys, p) -> ExtFunApp(x, List.map (fun y -> find y env) ys, p)

let f = g M.empty
