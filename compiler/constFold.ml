open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let rec g env (e, sp) =
  match e with
  | Var(x) when memi x env -> (Int(findi x env), sp)
  | Neg(x) when memi x env -> (Int(-(findi x env)), sp)
  | Add(x, y) when memi x env && memi y env ->
      (Int(findi x env + findi y env), sp)
  | Sub(x, y) when memi x env && memi y env ->
      (Int(findi x env - findi y env), sp)
  | FNeg(x) when memf x env ->
      (Float(-.(findf x env)), sp)
  | FAdd(x, y) when memf x env && memf y env ->
      (Float(findf x env +. findf y env), sp)
  | FSub(x, y) when memf x env && memf y env ->
      (Float(findf x env -. findf y env), sp)
  | FMul(x, y) when memf x env && memf y env ->
      (Float(findf x env *. findf y env), sp)
  | FDiv(x, y) when memf x env && memf y env ->
      (Float(findf x env /. findf y env), sp)
  | IfEq(x, y, e1, e2) when memi x env && memi y env ->
      if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memf x env && memf y env ->
      if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) -> (IfEq(x, y, g env e1, g env e2), sp)
  | IfLE(x, y, e1, e2) when memi x env && memi y env ->
      if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) when memf x env && memf y env ->
      if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) -> (IfLE(x, y, g env e1, g env e2), sp)
  | Let((x, t), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x (fst e1') env) e2 in
      (Let((x, t), e1', e2'), sp)
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      (LetRec({ name = x; args = ys; body = g env e1 }, g env e2), sp)
  | LetTuple(xts, y, e) when memt y env ->
      List.fold_left2
        (fun e' xt z -> (Let(xt, (Var(z), sp), e')), sp)
        (g env e)
        xts
        (findt y env)
  | LetTuple(xts, y, e) -> (LetTuple(xts, y, g env e), sp)
  | e -> (e, sp)

let f = g M.empty
