open Asm
open Printf

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty
let stackmap = ref []
let save x =
  stackset := S.add x !stackset;
  let x = (x, Type.Int) in
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  let x = (x, Type.Float) in
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let offset x =
  let rec sub sm acc =
    match sm with
    | (x', t') :: sm when x = x' -> acc
    | (x', t') :: sm -> sub sm (acc + 1)
    | [] -> failwith "Emit.offset" in
  4 * (sub !stackmap 0)
let stacksize () = (List.length !stackmap + 1) * 4

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

let p_of_exp = function
  | Nop(p) | Li(_, p) | LiL(_, p) | Mv(_, p) | Neg(_, p) | Add(_, _, p)
  | Sub(_, _, p) | Mul(_, _, p) | Div(_, _, p) | SLL(_, _, p)
  | SRL(_, _, p) | Lw(_, _, p) | Sw(_, _, _, p) | FMv(_, p)
  | FAbs(_, p) | FNeg(_, p)
  | FAdd(_, _, p) | FSub(_, _, p) | FMul(_, _, p) | FDiv(_, _, p)
  | FLw(_, _, p) | FSw(_, _, _, p) | IfEq(_, _, _, _, p) | IfLE(_, _, _, _, p)
  | IfFEq(_, _, _, _, p) | IfFLE(_, _, _, _, p) | CallCls(_, _, _, p)
  | CallDir(_, _, _, p) | Save(_, _, p) | Restore(_, p) -> p

(* swはスワップ用の一時レジスタ *)
(* レジスタ代入が絡まっているとき、swapしてどうにかする *)
let rec shuffle sw moves =
  (* rd = rsなら代入しても意味ないので除く *)
  let moves = List.filter (fun (rd, rs) -> rd <> rs) moves in
  (* y <- x のうち、 z <- yが存在してしまうもの *)
  let postmove (rd, rs) = List.exists (fun (rd', rs') -> rd = rs') moves in
  let postmoves, premoves = List.partition postmove moves in
  match premoves, postmoves with
  | [], [] -> []
  | [], (rd, rs) :: moves ->
      (* premovesがないのにpostmovesはあるので、これはループしている *)
      (* hoge <- rd <- rsを hoge <- sw <-(1) rd <- rsにして脱出 *)
      let replace (rd', rs') = if rs' = rd then (rd', sw) else (rd', rs') in
      (* TODO:ここ新しいswapレジスタ渡したほうがいいかもしれないのでは？ *)
      (sw, rd) :: (rd, rs) :: shuffle sw (List.map replace moves)
  | _, _ -> premoves @ shuffle sw postmoves

type dest =
  | Tail
  | NonTail of Id.t
let rec g oc = function
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
(* 命令からアセンブリ生成 *)
and g' oc (dest, exp) =
  let (sp, ep) = p_of_exp exp in
  let open Lexing in
  let pinfo = sprintf "%d-%d" sp.pos_lnum ep.pos_lnum in
  match dest, exp with
  | NonTail(_), Nop(_) -> ()
  | NonTail(rd), Li(imm, _) ->
      fprintf oc "\tli\t%s, %d ! %s\n" rd imm pinfo
  | NonTail(rd), LiL(Id.L(label), _) ->
      fprintf oc "\tli\t%s, %s ! %s\n" rd label pinfo
  | NonTail(rd), Mv(rs, _) when rd = rs -> ()
  | NonTail(rd), Mv(rs, _) ->
      fprintf oc "\tmv\t%s, %s ! %s\n" rd rs pinfo
  | NonTail(rd), Neg(rs, _) ->
      Printf.fprintf oc "\tneg\t%s, %s ! %s\n" rd rs pinfo
  | NonTail(rd), Add(rs1, V(rs2), _) ->
      fprintf oc "\tadd\t%s, %s, %s ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), Add(rs1, C(imm), _) ->
      fprintf oc "\taddi\t%s, %s, %d ! %s\n" rd rs1 imm pinfo
  | NonTail(rd), Sub(rs1, V(rs2), _) ->
      Printf.fprintf oc "\tsub\t%s, %s, %s ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), Sub(_, C(_), _) | NonTail(rd), Mul(_)
  | NonTail(rd), Div(_) -> failwith "Emit.g'"
  | NonTail(rd), SLL(rs1, V(rs2), _) ->
      fprintf oc "\tsll\t%s, %s, %s ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), SLL(rs1, C(imm), _) ->
      fprintf oc "\tslli\t%s, %s, %d ! %s\n" rd rs1 imm pinfo
  | NonTail(rd), SRL(rs1, V(rs2), _) ->
      fprintf oc "\tsrl\t%s, %s, %s ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), SRL(rs1, C(imm), _) ->
      fprintf oc "\tsrli\t%s, %s, %d ! %s\n" rd rs1 imm pinfo
  | NonTail(rd), Lw(rs1, C(imm), _) ->
      fprintf oc "\tlw\t%s, %s, %d ! %s\n" rd rs1 imm pinfo
  | NonTail(rd), Lw(rs1, V(rs2), _) ->
      Format.eprintf "lw M[rs1+rs2]@.";
      fprintf oc "\tadd\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      fprintf oc "\tlw\t%s, %s, 0 ! %s\n" rd "t0" pinfo
  | NonTail(_), Sw(rs1, rs2, C(imm), _) ->
      fprintf oc "\tsw\t%s, %s, %d ! %s\n" rs1 rs2 imm pinfo
  | NonTail(_), Sw(rs1, rs2, V(rs3), _) ->
      Format.eprintf "sw M[rs1 + rs3]@.";
      fprintf oc "\tadd\t%s, %s, %s ! %s\n" "t0" rs1 rs3 pinfo;
      fprintf oc "\tsw\t%s, %s, 0 ! %s\n" "t0" rs2 pinfo
  | NonTail(rd), FMv(rs, _) when rd = rs -> ()
  | NonTail(rd), FMv(rs, _) ->
      fprintf oc "\tfmv.s\t%s, %s ! %s\n" rd rs pinfo;
  | NonTail(rd), FAbs(rs, _) ->
      fprintf oc "\tfabs.s\t%s, %s ! %s\n" rd rs pinfo;
  | NonTail(rd), FNeg(rs, _) ->
      fprintf oc "\tfneg.s\t%s, %s ! %s\n" rd rs pinfo;
  | NonTail(rd), FAdd(rs1, rs2, _) ->
      fprintf oc "\tfadd.s\t%s, %s, %s, rne ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), FSub(rs1, rs2, _) ->
      fprintf oc "\tfsub.s\t%s, %s, %s, rne ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), FMul(rs1, rs2, _) ->
      fprintf oc "\tfmul.s\t%s, %s, %s, rne ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), FDiv(rs1, rs2, _) ->
      fprintf oc "\tfdiv.s\t%s, %s, %s, rne ! %s\n" rd rs1 rs2 pinfo
  | NonTail(rd), FLw(rs1, C(imm), _) ->
      fprintf oc "\tflw\t%s, %s, %d ! %s\n" rd rs1 imm pinfo
  | NonTail(rd), FLw(rs1, V(rs2), _) ->
      Format.eprintf "flw M[rs1+rs2]@.";
      fprintf oc "\tadd\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      fprintf oc "\tflw\t%s, %s, 0 ! %s\n" rd "t0" pinfo
  | NonTail(_), FSw(rs1, rs2, C(imm), _) ->
      fprintf oc "\tfsw\t%s, %s, %d ! %s\n" rs1 rs2 imm pinfo
  | NonTail(_), FSw(rs1, rs2, V(rs3), _) ->
      Format.eprintf "sw M[rs1 + rs3]@.";
      fprintf oc "\tadd\t%s, %s, %s ! %s\n" "t0" rs1 rs3 pinfo;
      fprintf oc "\tfsw\t%s, %s, 0 ! %s\n" "t0" rs2 pinfo
  | NonTail(_), Save(r, y, _) when List.mem r allregs
                                   && not (S.mem y !stackset) ->
      save y; (* スタックセットに記録 *)
      fprintf oc "\tsw\t%s, %s, %d ! %s\n" reg_sp r (offset y) pinfo
  | NonTail(_), Save(r, y, _) when List.mem r allfregs
                                   && not (S.mem y !stackset) ->
      savef y;
      fprintf oc "\tfsw\t%s, %s, %d ! %s\n" reg_sp r (offset y) pinfo
  | NonTail(_), Save(_, y, _) -> assert (S.mem y !stackset); ()
  | NonTail(rd), Restore(y, _) when List.mem rd allregs ->
      fprintf oc "\tlw\t%s, %s, %d ! %s\n" rd reg_sp (offset y) pinfo
  | NonTail(rd), Restore(y, _) ->
      assert (List.mem rd allfregs);
      fprintf oc "\tflw\t%s, %s, %d ! %s\n" rd reg_sp (offset y) pinfo
  | Tail, (Nop _ | Sw _ | FSw _ | Save _ as exp) ->
      (* nontailだったことにして命令をやり、ret *)
      g' oc (NonTail("zero"), exp);
      fprintf oc "\tret ! %s\n" pinfo;
  | Tail, (Li _ | LiL _ | Mv _ | Neg _ | Add _ | Sub _
          | Mul _ | Div _ | SLL _ | SRL _ | Lw _ as exp) ->
      (* return valueをa0レジスタに入れてret *)
      g' oc (NonTail(regs.(0)), exp);
      fprintf oc "\tret ! %s\n" pinfo;
  | Tail, (FMv _ | FAbs _ | FNeg _ | FAdd _ | FSub _
           | FMul _ | FDiv _ | FLw _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      fprintf oc "\tret ! %s\n" pinfo;
  | Tail, (Restore(x, _) as exp) ->
      begin match List.assoc x !stackmap with
      | Type.Int -> g' oc (NonTail(regs.(0)), exp)
      | Type.Float -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> failwith "Emit.g'"
      end;
      fprintf oc "\tret ! %s\n" pinfo;
  | Tail, IfEq(rs1, rs2, e1, e2, _) ->
      g'_tail_if oc rs1 rs2 e1 e2 "beq" "bne" pinfo
  | Tail, IfLE(rs1, rs2, e1, e2, _) ->
      (* TODO:bltしか使えないのでこうなっているが、逆なのでキモい *)
      g'_tail_if oc rs2 rs1 e1 e2 "bge" "blt" pinfo
  | Tail, IfFEq(rs1, rs2, e1, e2, p) ->
      fprintf oc "\tfeq.s\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      g' oc (Tail, IfEq("zero", "t0", e2, e1, p))
  | Tail, IfFLE(rs1, rs2, e1, e2, p) ->
      fprintf oc "\tflt.s\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      g' oc (Tail, IfEq("zero", "t0", e2, e1, p))
  | NonTail(rd), IfEq(rs1, rs2, e1, e2, p) ->
      g'_non_tail_if oc (NonTail(rd)) rs1 rs2 e1 e2 "beq" "bne" pinfo
  | NonTail(rd), IfLE(rs1, rs2, e1, e2, p) ->
      (* TODO:bltしか使えないのでこうなっているが、逆なのでキモい *)
      g'_non_tail_if oc (NonTail(rd)) rs2 rs1 e1 e2 "bge" "blt" pinfo
  | NonTail(rd), IfFEq(rs1, rs2, e1, e2, p) ->
      fprintf oc "\tfeq.s\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      g' oc (NonTail(rd), IfEq("zero", "t0", e2, e1, p))
  | NonTail(rd), IfFLE(rs1, rs2, e1, e2, p) ->
      fprintf oc "\tflt.s\t%s, %s, %s ! %s\n" "t0" rs1 rs2 pinfo;
      g' oc (NonTail(rd), IfEq("zero", "t0", e2, e1, p))
  | Tail, CallCls(x, ys, zs, p) ->
      (* TODO:よくわからない *)
      g'_args oc [(reg_cl, x)] ys zs;
      Printf.fprintf oc "\tlw\t%s, %s, 0\n" reg_sw reg_cl;
      Printf.fprintf oc "\tjalr\tzero, %s, 0\n" reg_sw;
  | Tail, CallDir(Id.L(label), ys, zs, p) ->
      (* TODO:よくわからない *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" label;
  (* 内部関数呼出しをする *)
  (* 必要な変数はsaveされている？ *)
  | NonTail(rd), CallCls(x, args, fargs, p) ->
      g'_args oc [(reg_cl, x)] args fargs;
      let ss = stacksize () in
      (* 現スタックの一番上にraを保存(caller save) *)
      Printf.fprintf oc "\tsw\t%s, %s, %d\n" reg_sp reg_ra (ss - 4);
      (* spを更新し、新スタックへ移動 *)
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      (* tmpにclをロード *)
      Printf.fprintf oc "\tlw\t%s, %s, 0\n" reg_sw reg_cl;
      (* clへ飛ぶ、raを更新 *)
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_ra reg_sw;
      (* 向こうではraを使って戻り、ここに来る *)
      (* spを更新し、現スタックへ戻す *)
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ~-ss;
      (* raを復帰 *)
      Printf.fprintf oc "\tlw\t%s, %s, %d\n" reg_ra reg_sp (ss - 4);
      (* 返り値をrdに入れる *)
      if List.mem rd allregs && rd <> regs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" rd regs.(0)
      else if List.mem rd allfregs && rd <> fregs.(0) then
        Printf.fprintf oc "\tfmv.s\t%s, %s\n" rd fregs.(0)
  (* 外部関数呼出しをする *)
  (* わからんけど、たぶんここに来るまでに変数は適宜saveされている？ *)
  | NonTail(rd), CallDir(Id.L(label), args, fargs, p) ->
      g'_args oc [] args fargs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %s, %d\n" reg_sp reg_ra (ss - 4);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tjal\t%s\n" label;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ~-ss;
      Printf.fprintf oc "\tlw\t%s, %s, %d\n" reg_ra reg_sp (ss - 4);
      if List.mem rd allregs && rd <> regs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" rd regs.(0)
      else if List.mem rd allfregs && rd <> fregs.(0) then
        Printf.fprintf oc "\tfmv.s\t%s, %s\n" rd fregs.(0)
and g'_tail_if oc rs1 rs2 e1 e2 b bn pinfo =
  let b_else = Id.genid (b ^ "_else") in
  fprintf oc "\t%s\t%s, %s, %s ! %s\n" bn rs1 rs2 b_else pinfo;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest rs1 rs2 e1 e2 b bn pinfo =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  fprintf oc "\t%s\t%s, %s, %s ! %s\n" bn rs1 rs2 b_else pinfo;
  (* b = true *)
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  fprintf oc "\tj\t%s\n" b_cont;
  (* b = false *)
  fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  let stackset2 = !stackset in
  (* cont *)
  fprintf oc "%s:\n" b_cont;
  stackset := S.inter stackset1 stackset2
(* 引数レジスタへ値を代入する処理 *)
and g'_args oc x_reg_cl args fargs =
  let move_cons (i, moves) arg = (i + 1, (regs.(i), arg) :: moves) in
  let (_, moves) = List.fold_left move_cons (0, x_reg_cl) args in
  List.iter
    (fun (rd, rs) -> Printf.fprintf oc "\tmv\t%s, %s\n" rd rs)
    (shuffle reg_sw moves);
  let fmove_cons (i, fmoves) farg = (i + 1, (fregs.(i), farg) :: fmoves) in
  let (_, fmoves) = List.fold_left fmove_cons (0, []) fargs in
  List.iter
    (fun (rd, rs) -> Printf.fprintf oc "\tfmv.s\t%s, %s\n" rd rs)
    (shuffle reg_fsw fmoves)

(* 再帰関数のアセンブリ出力 *)
let h oc {name = Id.L(x); args = _; fargs = _; body = insts; ret = _} =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, insts)

let f oc (Prog(float_table, fundefs, insts)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "\tli\tsp, %d\n" (100 * 1024);
  Printf.fprintf oc "\tli\thp, %d\n" (200 * 1024);
  Printf.fprintf oc "\tli\tap, %d\n" (1200 * 1024);
  Printf.fprintf oc "\tj\tmin_caml_start\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\n" x;
      Printf.fprintf oc "\tfloat\t%.11f\n" d)
    float_table;
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "min_caml_start:\n";
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("zero"), insts);
  Printf.fprintf oc "\tfin\t0\n";
