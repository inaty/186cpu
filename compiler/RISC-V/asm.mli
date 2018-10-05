type id_or_imm = V of Id.t | C of int
type insts =
  | Ans of inst
  | Let of (Id.t * Type.t) * inst * insts
and inst =
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * id_or_imm
  | StDF of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  (* 変更(op2をid_or_immからId.tに) *)
  | IfEq of Id.t * Id.t * insts * insts
  | IfLE of Id.t * Id.t * insts * insts
  | IfGE of Id.t * Id.t * insts * insts
  | IfFEq of Id.t * Id.t * insts * insts
  | IfFLE of Id.t * Id.t * insts * insts
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ *)
  | Restore of Id.t (* �����å��ѿ������ͤ����� *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : insts; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * insts

val fletd : Id.t * inst * insts -> insts (* shorthand of Let for float *)
val seq : inst * insts -> insts (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_ra : Id.t
val reg_hp : Id.t
val reg_sp : Id.t
val is_reg : Id.t -> bool
val co_freg : Id.t -> Id.t

val fv : insts -> Id.t list
val concat : insts -> Id.t * Type.t -> insts -> insts

val align : int -> int
