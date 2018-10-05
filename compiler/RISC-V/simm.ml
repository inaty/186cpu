open Asm

(* 命令列に対する13bit即値最適化 *)
(* レジスタの中身が13bitまでの即値だった場合はそこをC(i)にする *)
let rec g imms = function
  | Ans(inst) -> Ans(g' imms inst)
  | Let((x, t), Set(i), insts) when ~-4096 <= i && i < 4096 ->
      (* envはId.tとid_or_immのMで、畳めるのでenvを広げてもっかいg *)
      let insts' = g (M.add x i imms) insts in
      (* それでもxが残ってたら代入を残す、xが消えてたら代入は消す *)
      if List.mem x (fv insts') then Let((x, t), Set(i), insts') else insts'
  | Let(xt, SLL(y, C(i)), e) when M.mem y imms -> (* for array access *)
      (* Format.eprintf "erased redundant SLL on %s@." x; *)
      g imms (Let(xt, Set((M.find y imms) lsl i), e))
  | Let(xt, inst, e) -> Let(xt, g' imms inst, g imms e)
(* 命令に対する13bit即値最適化 *)
(* envは即値リスト（大事） *)
and g' imms = function
  | Add(x, V(y)) when M.mem y imms -> Add(x, C(M.find y imms))
  | Add(x, V(y)) when M.mem x imms -> Add(y, C(M.find x imms))
  | Sub(x, V(y)) when M.mem y imms -> Sub(x, C(M.find y imms))
  | SLL(x, V(y)) when M.mem y imms -> SLL(x, C(M.find y imms))
  | Ld(x, V(y)) when M.mem y imms -> Ld(x, C(M.find y imms))
  | St(x, y, V(z)) when M.mem z imms -> St(x, y, C(M.find z imms))
  | LdDF(x, V(y)) when M.mem y imms -> LdDF(x, C(M.find y imms))
  | StDF(x, y, V(z)) when M.mem z imms -> StDF(x, y, C(M.find z imms))
  (* 分岐系の命令への即値反映を全部削除 *)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g imms e1, g imms e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g imms e1, g imms e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g imms e1, g imms e2)
  | IfFEq(x, y, e1, e2) -> IfFEq(x, y, g imms e1, g imms e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g imms e1, g imms e2)
  | e -> e

let h {name = l; args = xs; fargs = ys; body = insts; ret = t} =
  {name = l; args = xs; fargs = ys; body = g M.empty insts; ret = t}

let f (Prog(float_table, fundefs, insts)) =
  Prog(float_table, List.map h fundefs, g M.empty insts)
