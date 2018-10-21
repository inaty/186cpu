open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty
let stackmap = ref []
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

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
  | _, _ -> premoves @ postmoves

type dest =
  | Tail
  | NonTail of Id.t
(* 命令列からアセンブリ生成 *)
let rec g oc = function
  | dest, Ans(inst, sp) -> g' oc (dest, inst) sp
  | dest, Let((x, t), (inst, sp), insts) ->
      g' oc (NonTail(x), inst) sp;
      g oc (dest, insts)
(* 命令からアセンブリ生成 *)
and g' oc (dest, inst) sp =
  let open Lexing in
  let lnum = sp.pos_lnum in
  match dest, inst with
  | NonTail(_), Nop -> ()
  (* TODO:値の範囲をちゃんと扱う *)
  | NonTail(rd), Set(imm) ->
      Printf.fprintf oc "\tli\t%s, %d ! %d\n" rd imm lnum
  | NonTail(rd), SetL(Id.L(label)) ->
      Printf.fprintf oc "\tli\t%s, %s ! %d\n" rd label lnum
  | NonTail(rd), Mov(rs) when rd = rs -> ()
  | NonTail(rd), Mov(rs) ->
      Printf.fprintf oc "\tmv\t%s, %s ! %d\n" rd rs lnum
  | NonTail(rd), Neg(rs) ->
      Printf.fprintf oc "\tneg\t%s, %s ! %d\n" rd rs lnum
  | NonTail(rd), Add(rs1, V(rs2)) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  (* TODO:値の範囲をちゃんと扱う *)
  | NonTail(rd), Add(rs1, C(imm)) ->
      Printf.fprintf oc "\taddi\t%s, %s, %d ! %d\n" rd rs1 imm lnum
  | NonTail(rd), Sub(rs1, V(rs2)) ->
      Printf.fprintf oc "\tsub\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(rd), Mul(rs1, rs2) ->
      Printf.fprintf oc "\tmul\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(rd), Div(rs1, rs2) ->
      Printf.fprintf oc "\tdiv\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  (* TODO:値の範囲をちゃんと扱う *)
  | NonTail(rd), Sub(rs1, C(imm)) ->
      Printf.fprintf oc "\taddi\t%s, %s, %d ! %d\n" rd rs1 ~-imm lnum
  | NonTail(rd), SLL(rs1, V(rs2)) ->
      Printf.fprintf oc "\tsll\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  (* TODO:値の範囲をちゃんと扱う *)
  | NonTail(rd), SLL(rs1, C(imm)) ->
      Printf.fprintf oc "\tslli\t%s, %s, %d ! %d\n" rd rs1 imm lnum
  | NonTail(rd), Ld(rs1, C(imm)) ->
      Printf.fprintf oc "\tlw\t%s, %s, %d ! %d\n" rd rs1 imm lnum
  | NonTail(rd), Ld(rs1, V(rs2)) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s ! %d\n" "t0" rs1 rs2 lnum;
      Printf.fprintf oc "\tlw\t%s, %s, 0 ! %d\n" rd "t0" lnum
  | NonTail(_), St(rs2, rs1, C(imm)) ->
      Printf.fprintf oc "\tsw\t%s, %s, %d ! %d\n" rs1 rs2 imm lnum
  | NonTail(_), St(rs2, rs1, V(rs3)) ->
      Printf.fprintf oc "\tadd\t%s, %s, %s ! %d\n" "t0" rs1 rs3 lnum;
      Printf.fprintf oc "\tsw\t%s, %s, 0 ! %d\n" "t0" rs2 lnum
  | NonTail(x), FMv(y) when x = y -> ()
  | NonTail(rd), FMv(rs) ->
      Printf.fprintf oc "\tfmv.s\t%s, %s ! %d\n" rd rs lnum;
  | NonTail(rd), FNeg(rs) ->
      Printf.fprintf oc "\tfneg.s\t%s, %s ! %d\n" rd rs lnum;
  | NonTail(rd), FAdd(rs1, rs2) ->
      Printf.fprintf oc "\tfadd.s\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(rd), FSub(rs1, rs2) ->
      Printf.fprintf oc "\tfsub.s\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(rd), FMul(rs1, rs2) ->
      Printf.fprintf oc "\tfmul.s\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(rd), FDiv(rs1, rs2) ->
      Printf.fprintf oc "\tfdiv.s\t%s, %s, %s ! %d\n" rd rs1 rs2 lnum
  | NonTail(x), LdDF(y, z') ->
      Printf.fprintf oc "\tldd\t[%s + %s], %s ! %d\n"
        y (pp_id_or_imm z') x lnum
  | NonTail(_), StDF(x, y, z') ->
      Printf.fprintf oc "\tstd\t%s, [%s + %s] ! %d\n"
        x y (pp_id_or_imm z') lnum
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t! %s ! %d\n" s lnum
  (* TODO:yに適切な名前をつける *)
  | NonTail(_), Save(reg, y) when List.mem reg allregs &&
                                  not (S.mem y !stackset) ->
      save y; (* スタックセットに記録 *)
      Printf.fprintf oc "\tsw\t%s, %s, %d ! %d\n" reg_sp reg (offset y) lnum
  | NonTail(_), Save(x, y) when List.mem x allfregs &&
                                not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tstd\t%s, [%s + %d] ! %d\n"
        x reg_sp (offset y) lnum
  | NonTail(_), Save(_, y) -> assert (S.mem y !stackset); ()
  (* TODO:name y *)
  | NonTail(rd), Restore(y) when List.mem rd allregs ->
      Printf.fprintf oc "\tlw\t%s, %s, %d ! %d\n"
        rd reg_sp (offset y) lnum
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tldd\t[%s + %d], %s ! %d\n"
        reg_sp (offset y) x lnum
  (* retlよくわかんないけど普通にretに変更しnop削除 *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as inst) ->
      (* nontailだったことにして命令をやり、ret *)
      g' oc (NonTail(Id.gentmp Type.Unit), inst) sp;
      Printf.fprintf oc "\tret ! %d\n" lnum;
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _
          | Mul _ | Div _ | SLL _ | Ld _ as inst) ->
      (* return valueをa0レジスタに入れている *)
      g' oc (NonTail(regs.(0)), inst) sp;
      Printf.fprintf oc "\tret ! %d\n" lnum;
  | Tail, (FMv _ | FNeg _ | FAdd _ |
           FSub _ | FMul _ | FDiv _ | LdDF _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp) sp;
      Printf.fprintf oc "\tret ! %d\n" lnum;
  (* TODO:これ意味わからん *)
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp) sp
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp) sp
      | _ -> assert false);
      Printf.fprintf oc "\tret\n";
  | Tail, IfEq(reg1, reg2, insts1, insts2) ->
      g'_tail_if oc reg1 reg2 insts1 insts2 "be" "bne"
  | Tail, IfLE(reg1, reg2, insts1, insts2) ->
      g'_tail_if oc reg2 reg1 insts1 insts2 "bge" "blt"
  (* | Tail, IfGE(reg1, reg2, insts1, insts2) ->
      g'_tail_if oc reg1 reg2 insts1 insts2 "bge" "bl" *)
  | Tail, IfFEq(reg1, reg2, e1, e2) ->
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" reg1 reg2;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc reg1 reg2 e1 e2 "fbe" "fbne"
  | Tail, IfFLE(reg1, reg2, e1, e2) ->
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" reg1 reg2;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc reg1 reg2 e1 e2 "fble" "fbg"
  | NonTail(rd), IfEq(rs1, rs2, insts1, insts2) ->
      g'_non_tail_if oc (NonTail(rd)) rs1 rs2 insts1 insts2 "be" "bne"
  | NonTail(rd), IfLE(rs1, rs2, insts1, insts2) ->
      g'_non_tail_if oc (NonTail(rd)) rs2 rs1 insts1 insts2 "bge" "blt"
  (* | NonTail(rd), IfGE(rs1, rs2, insts1, insts2) ->
      g'_non_tail_if oc (NonTail(rd)) rs1 rs2 insts1 insts2 "bge" "bl" *)
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) x y e1 e2 "fbe" "fbne"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) x y e1 e2 "fble" "fbg"
  | Tail, CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s, %s, 0\n" reg_sw reg_cl;
      Printf.fprintf oc "\tjalr\tzero, %s, 0\n" reg_sw;
  | Tail, CallDir(Id.L(label), ys, zs) ->
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" label;
  (* 内部関数呼出しをする *)
  (* 必要な変数はsaveされている？ *)
  | NonTail(rd), CallCls(x, args, fargs) ->
      g'_args oc [(x, reg_cl)] args fargs;
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
  | NonTail(rd), CallDir(Id.L(label), args, fargs) ->
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
and g'_tail_if oc reg1 reg2 insts1 insts2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn reg1 reg2 b_else;
  let stackset_back = !stackset in
  g oc (Tail, insts1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, insts2)
and g'_non_tail_if oc dest reg1 reg2 insts1 insts2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn reg1 reg2 b_else;
  let stackset_back = !stackset in
  g oc (dest, insts1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, insts2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
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
  (* 頭から読んで実行する用のバイナリなので、とりあえずこうする *)
  Printf.fprintf oc "\tj\tmin_caml_start\n";
  (* リンカとかのことを考えないので、そういうのはとりあえず無視 *)
  (* Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n"; *)
  (* List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s: ! %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    float_table; *)
  (* Printf.fprintf oc ".section\t\".text\"\n"; *)
  List.iter (fun fundef -> h oc fundef) fundefs;
  (* Printf.fprintf oc ".global\tmin_caml_start\n"; *)
  Printf.fprintf oc "min_caml_start:\n";
  (* Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n"; (* from gcc; why 112? *) *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("zero"), insts);
  Printf.fprintf oc "\tfin\t0\n";
  (* Printf.fprintf oc "\trestore\n" *)
