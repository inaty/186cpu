open Asm

let power_of_two n = (n > 0) && ((n land (n - 1)) = 0)

let log2 n =
  let rec loop b i =
    if (n land b) = 0 then loop (b lsl 1) (i + 1) else i in
  loop 1 0

(* 命令列に対する12bit即値最適化 *)
let rec g imms = function
  | Ans(exp) -> Ans(g' imms exp)
  | Let((x, t), Li(i, p), e) when ~-2048 <= i && i < 2048 ->
      let e' = g (M.add x i imms) e in
      if List.mem x (fv e') then Let((x, t), Li(i, p), e') else e'
  | Let(xt, SLL(y, C(i), p), e) when M.mem y imms -> (* for array access *)
      g imms (Let(xt, Li((M.find y imms) lsl i, p), e))
  | Let(xt, exp, e) -> Let(xt, g' imms exp, g imms e)
(* 命令に対する12bit即値最適化 *)
and g' imms = function
  | Add(x, V(y), p) when M.mem y imms -> Add(x, C(M.find y imms), p)
  | Add(x, V(y), p) when M.mem x imms -> Add(y, C(M.find x imms), p)
  | Sub(x, V(y), p) when M.mem y imms && M.find y imms <> ~-2048 ->
      Add(x, C(~-(M.find y imms)), p)
  (* 12bitに収まらないけど2の累乗な即値 には対応できない *)
  | Mul(x, V(y), p) when M.mem y imms && power_of_two (M.find y imms) ->
      SLL(x, C(log2 (M.find y imms)), p)
  | Mul(x, V(y), p) when M.mem x imms && power_of_two (M.find x imms) ->
      SLL(y, C(log2 (M.find x imms)), p)
  | Div(x, V(y), p) when M.mem y imms && power_of_two (M.find y imms) ->
      SRL(x, C(log2 (M.find y imms)), p)
  | SLL(x, V(y), p) when M.mem y imms && (M.find y imms) < 32 ->
      SLL(x, C(M.find y imms), p)
  | Lw(x, V(y), p) when M.mem y imms -> Lw(x, C(M.find y imms), p)
  | Sw(x, y, V(z), p) when M.mem z imms -> Sw(x, y, C(M.find z imms), p)
  | FLw(x, V(y), p) when M.mem y imms -> FLw(x, C(M.find y imms), p)
  | FSw(x, y, V(z), p) when M.mem z imms -> FSw(x, y, C(M.find z imms), p)
  | IfEq(x, y, e1, e2, p) -> IfEq(x, y, g imms e1, g imms e2, p)
  | IfLE(x, y, e1, e2, p) -> IfLE(x, y, g imms e1, g imms e2, p)
  | IfFEq(x, y, e1, e2, p) -> IfFEq(x, y, g imms e1, g imms e2, p)
  | IfFLE(x, y, e1, e2, p) -> IfFLE(x, y, g imms e1, g imms e2, p)
  | exp -> exp

let h {name = l; args = xs; fargs = ys; body = e; ret = t} =
  {name = l; args = xs; fargs = ys; body = g M.empty e; ret = t}

let f (Prog(float_table, fundefs, e)) =
  Prog(float_table, List.map h fundefs, g M.empty e)
