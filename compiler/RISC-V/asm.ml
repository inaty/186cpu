type id_or_imm = (* V = variable, C = constant *)
  | V of Id.t
  | C of int
type insts = (* 命令の列 *)
  | Ans of inst_pos (* 値を返すなにか *)
  | Let of (Id.t * Type.t) * inst_pos * insts
and inst_pos = inst * Lexing.position
and inst = (* 命令（仮想命令含む） *)
  | Nop
  | Set of int (* レジスタ←即値、RISC-Vだとli（仮想命令）だけど変えなくていいか *)
  | SetL of Id.l (* わからんけどlabelの場所を返す操作っぽい *)
  | Mov of Id.t (* 名前mvに変えてもいいかも *)
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | SLL of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * id_or_imm (* わからんけどラベルから値を引き出す操作っぽい *)
  | StDF of Id.t * Id.t * id_or_imm (* stのdoubleword float（？） *)
  | Comment of string
  (* virtual instructions *)
  (* 変更(op2をid_or_immからId.tに) *)
  | IfEq of Id.t * Id.t * insts * insts
  | IfLE of Id.t * Id.t * insts * insts
  | IfGE of Id.t * Id.t * insts * insts (* �����оΤǤϤʤ��Τ�ɬ�� *)
  | IfFEq of Id.t * Id.t * insts * insts
  | IfFLE of Id.t * Id.t * insts * insts
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタックから値を戻す *)
type fundef =
  { name : Id.l; args : Id.t list; fargs : Id.t list;
    body : insts; ret : Type.t }
(* プログラム = (float_table, 関数リスト, 命令列) *)
type prog = Prog of (Id.l * float) list * fundef list * insts

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

(* 自由レジスタ集 *)
(* 引数レジスタはこれの先頭から割り当てられていくっぽい *)
(* TODO:個数とか変える *)
(* 先頭4つだけ正しくした *)
let regs =
  [| "a0"; "a1"; "a2"; "a3";
     "%l0"; "%l1"; "%l2"; "%l3"; "%l4"; "%l5"; "%l6"; "%l7";
     "%o0"; "%o1"; "%o2"; "%o3"; "t1"; "t2" |]
let fregs = Array.init 16 (fun i -> Printf.sprintf "%%f%d" (i * 2))
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
(* closure addressをレジスタに入れたくなったら自由レジスタの最後のレジスタを使う *)
let reg_cl = regs.(Array.length regs - 1)
(* swapとかで適当なアドレスを使いたくなったら自由レジスタの後ろから2番目のレジスタを使う *)
let reg_sw = regs.(Array.length regs - 2)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
(* 変更 *)
let reg_sp = "sp" (* stack pointer *)
let reg_hp = "%i1" (* heap pointer (caml2html: sparcasm_reghp) *)
(* 変更 *)
let reg_ra = "ra" (* return address *)
(* 変更 *)
let is_reg x = (x.[0] = '%') ||
               List.exists (fun el -> el = x) allregs ||
               x = "ra" ||
               x = "sp" ||
               x = "t1" ||
               x = "t2"
let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "%%f%d" (i * 2))
      (Printf.sprintf "%%f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | SLL(x, y')
  | Ld(x, y') | LdDF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, z') | StDF(x, y, z') -> x :: y :: fv_id_or_imm z'
  | Mul(x, y) | Div(x, y)
  | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) | IfGE(x, y, e1, e2) ->
      x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) ->
      x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(inst, _) -> fv_exp inst
  | Let((x, t), (inst, _), e) ->
      fv_exp inst @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

(* e1, e2を順次letでやっていくことにしようね *)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(inst) -> Let(xt, inst, e2)
  | Let(yt, inst, e1') -> Let(yt, inst, concat e1' xt e2)

let align i = (if i mod 8 = 0 then i else i + 4)
