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
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | SRL of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMv of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | LdDF of Id.t * id_or_imm (* わからんけどラベルから値を引き出す操作っぽい *)
  | StDF of Id.t * Id.t * id_or_imm (* stのdoubleword float（？） *)
  (* virtual instructions *)
  (* 変更(op2をid_or_immからId.tに) *)
  | IfEq of Id.t * Id.t * insts * insts
  | IfLE of Id.t * Id.t * insts * insts
  (* | IfGE of Id.t * Id.t * insts * insts (* �����оΤǤϤʤ��Τ�ɬ�� *) *)
  | IfFEq of Id.t * Id.t * insts * insts
  | IfFLE of Id.t * Id.t * insts * insts
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* Save(r, y) = レジスタrに入っている変数yをスタックに退避 *)
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
(* TODO:caller-saveとcallee-save *)
(* 今は多分全部saveする仕様 *)
(* TODO:regsを直接見ている悪いやつをどうにかする *)
let regs = Array.init 22 (fun i -> Printf.sprintf "a%d" i)
let regs_tmp = Array.init 5 (fun i -> Printf.sprintf "t%d" i)
let fregs = Array.init 27 (fun i -> Printf.sprintf "fa%d" i)
let fregs_tmp = Array.init 5 (fun i -> Printf.sprintf "ft%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
(* TODO:こいつら退避不要ならそれを反映させていいのでは？とりあえずaの末端のまま *)
let reg_cl = regs.(Array.length regs - 1) (* closure address用のtmp *)
let reg_sw = regs.(Array.length regs - 2) (* swap用のtmp *)
let reg_fsw = fregs.(Array.length fregs - 1)
let reg_ra = "ra" (* return address *)
let reg_sp = "sp" (* stack pointer *)
let reg_hp = "hp" (* heap pointer *)
let is_reg x =
  List.exists (fun el -> el = x) allregs
  || List.exists (fun el -> el = x) allfregs
  || x = reg_ra || x = reg_sp || x = reg_hp
(* let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "%%f%d" (i * 2))
      (Printf.sprintf "%%f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *) *)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMv(x) | FNeg(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | Mul(x, y') | Div(x, y') | SLL(x, y')
  | SRL(x, y') | Ld(x, y') | LdDF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, z') | StDF(x, y, z') -> x :: y :: fv_id_or_imm z'
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) ->
  (* | IfGE(x, y, e1, e2) -> *)
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

(*
e1 : Asm.t -> xt : Id.t * Type.t -> e2 : Asm.t
let x = e1 in e2 にする
e1がlet式だった場合はlet定義を頭出しする
e1が let y = exp in e1' -> let y = exp in (let x = e1' in e2)になる
*)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

let align i = i (* (if i mod 8 = 0 then i else i + 4) *)
