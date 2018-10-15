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

let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

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
  (* TODO:ここあとでちゃんとやる *)
  | NonTail(_), Ld(_) ->
      Printf.fprintf oc "! later\n"
  | NonTail(_), St(rs2, rs1, C(imm)) ->
      Printf.fprintf oc "\tsw\t%s, %s, %d ! %d\n" rs1 rs2 imm lnum
  (* TODO:ldと同様 *)
  | NonTail(_), St(_) ->
      Printf.fprintf oc "! later\n"
  | NonTail(x), FMv(y) when x = y -> ()
  | NonTail(x), FMv(y) ->
      Printf.fprintf oc "\tfmovs\t%s, %s ! %d\n" y x lnum;
      Printf.fprintf oc "\tfmovs\t%s, %s ! %d\n" (co_freg y) (co_freg x) lnum
  | NonTail(x), FNeg(y) ->
      Printf.fprintf oc "\tfnegs\t%s, %s ! %d\n" y x lnum;
      if x <> y then
        Printf.fprintf oc "\tfmovs\t%s, %s ! %d\n" (co_freg y) (co_freg x) lnum
  | NonTail(x), FAdd(y, z) ->
      Printf.fprintf oc "\tfaddd\t%s, %s, %s ! %d\n" y z x lnum
  | NonTail(x), FSub(y, z) ->
      Printf.fprintf oc "\tfsubd\t%s, %s, %s ! %d\n" y z x lnum
  | NonTail(x), FMul(y, z) ->
      Printf.fprintf oc "\tfmuld\t%s, %s, %s ! %d\n" y z x lnum
  | NonTail(x), FDiv(y, z) ->
      Printf.fprintf oc "\tfdivd\t%s, %s, %s ! %d\n" y z x lnum
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
  (* 中途半端な反転 *)
  (* TODO:できてない、あとでやる *)
  | Tail, IfLE(reg1, reg2, insts1, insts2) ->
      g'_tail_if oc reg2 reg1 insts1 insts2 "ble" "bg"
  | Tail, IfGE(reg1, reg2, insts1, insts2) ->
      g'_tail_if oc reg2 reg1 insts1 insts2 "bge" "bl"
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
  (* TODO:できてない、あとでやる *)
  | NonTail(rd), IfLE(rs1, rs2, insts1, insts2) ->
      g'_non_tail_if oc (NonTail(rd)) rs1 rs2 insts1 insts2 "ble" "bg"
  | NonTail(rd), IfGE(rs1, rs2, insts1, insts2) ->
      g'_non_tail_if oc (NonTail(rd)) rs1 rs2 insts1 insts2 "bge" "bl"
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
      Printf.fprintf oc "\tlw\t %s, %s, 0\n" reg_sw reg_cl;
      Printf.fprintf oc "\tjalr\tzero, %s, 0\n" reg_sw;
  | Tail, CallDir(Id.L(label), ys, zs) ->
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" label;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %s, %d\n" reg_sp reg_ra (ss - 4);
      Printf.fprintf oc "\tlw\t%s, %s, 0\n" reg_sw reg_cl;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_ra reg_sw;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ~-ss;
      Printf.fprintf oc "\tlw\t%s, %s, %d\n" reg_ra reg_sp (ss - 4);
      if List.mem a allregs && a <> regs.(0) then
        (* TODO:謎（向きは合わせたっぽい） *)
        Printf.fprintf oc "\tmv\t%s, %s\n" a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
  | NonTail(a), CallDir(Id.L(label), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      (* 変更 *)
      Printf.fprintf oc "\tsw\t%s, %s, %d\n" reg_sp reg_ra (ss - 4);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tcall\t%s\n" label;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ~-ss;
      Printf.fprintf oc "\tlw\t%s, %s, %d\n" reg_ra reg_sp (ss - 4);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
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
  Printf.fprintf oc "\tb\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, insts2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
(* TODO:わからん *)
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmv\t%s, %s\n" r y)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tfmovs\t%s, %s\n" z fr;
      Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg z) (co_freg fr))
    (shuffle reg_fsw zfrs)

(* 再帰関数のアセンブリ出力 *)
let h oc {name = Id.L(x); args = _; fargs = _; body = insts; ret = _} =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, insts)

let f oc (Prog(float_table, fundefs, insts)) =
  Format.eprintf "generating assembly...@.";
  (* 頭から読んで実行する用のバイナリなので、とりあえずこうする *)
  Printf.fprintf oc "j min_caml_start\n";
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
  (* Printf.fprintf oc "\tret\n"; *)
  (* Printf.fprintf oc "\trestore\n" *)
