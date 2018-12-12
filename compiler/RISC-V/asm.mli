type id_or_imm = (* V = variable, C = constant *)
  | V of Id.t
  | C of int
type p = Lexing.position * Lexing.position
type t = (* 命令の列 *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 命令（仮想命令含む） *)
  | Nop of p
  | Li of int * p
  | LiL of Id.l * p
  | Mv of Id.t * p
  | Neg of Id.t * p
  | Add of Id.t * id_or_imm * p
  | Sub of Id.t * id_or_imm * p
  | Mul of Id.t * id_or_imm * p
  | Div of Id.t * id_or_imm * p
  | SLL of Id.t * id_or_imm * p
  | SRL of Id.t * id_or_imm * p
  | Lw of Id.t * id_or_imm * p
  | Sw of Id.t * Id.t * id_or_imm * p
  | FMv of Id.t * p
  | FAbs of Id.t * p
  | FNeg of Id.t * p
  | FSqrt of Id.t * p
  | FFloor of Id.t * p
  | FAdd of Id.t * Id.t * p
  | FSub of Id.t * Id.t * p
  | FMul of Id.t * Id.t * p
  | FDiv of Id.t * Id.t * p
  | FtoI of Id.t * p
  | ItoF of Id.t * p
  | FLw of Id.t * id_or_imm * p
  | FSw of Id.t * Id.t * id_or_imm * p
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t * p
  | IfLE of Id.t * Id.t * t * t * p
  | IfFEq of Id.t * Id.t * t * t * p
  | IfFLE of Id.t * Id.t * t * t * p
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list * p
  | CallDir of Id.l * Id.t list * Id.t list * p
  (* Save(r, y) = レジスタrに入っている変数yをスタックに退避 *)
  | Save of Id.t * Id.t * p
  | Restore of Id.t * p (* スタックから値を戻す *)
type fundef =
  { name : Id.l; args : Id.t list; fargs : Id.t list;
    body : t; ret : Type.t }
(* プログラム = (float_table, 関数リスト, 命令列) *)
type prog = Prog of (Id.l * float) list * fundef list * t

val dp : Lexing.position * Lexing.position

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

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
(* val co_freg : Id.t -> Id.t *)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int

val print_prog : prog -> unit
