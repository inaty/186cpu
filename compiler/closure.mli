type closure = { entry : Id.l; actual_fv : Id.t list }
type p = Lexing.position * Lexing.position
type t =
  | Unit of p
  | Int of int * p
  | Float of float * p
  | Neg of Id.t * p
  | Add of Id.t * Id.t * p
  | Sub of Id.t * Id.t * p
  | Mul of Id.t * Id.t * p
  | Div of Id.t * Id.t * p
  | FAbs of Id.t * p
  | FNeg of Id.t * p
  | FAdd of Id.t * Id.t * p
  | FSub of Id.t * Id.t * p
  | FMul of Id.t * Id.t * p
  | FDiv of Id.t * Id.t * p
  | IfEq of Id.t * Id.t * t * t * p
  | IfLE of Id.t * Id.t * t * t * p
  | Let of (Id.t * Type.t) * t * t * p
  | Var of Id.t * p
  | MakeCls of (Id.t * Type.t) * closure * t * p
  | AppCls of Id.t * Id.t list * p
  | AppDir of Id.l * Id.t list * p
  | Tuple of Id.t list * p
  | LetTuple of (Id.t * Type.t) list * Id.t * t * p
  | Get of Id.t * Id.t * p
  | Put of Id.t * Id.t * Id.t * p
  | ExtArray of Id.l * p
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog
val print_closure_t : t -> unit
val print_fundefs : fundef list -> unit
