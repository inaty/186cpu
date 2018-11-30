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
  | FSqrt of Id.t * p
  | FFloor of Id.t * p
  | FAdd of Id.t * Id.t * p
  | FSub of Id.t * Id.t * p
  | FMul of Id.t * Id.t * p
  | FDiv of Id.t * Id.t * p
  | FtoI of Id.t * p
  | ItoF of Id.t * p
  | IfEq of Id.t * Id.t * t * t * p
  | IfLE of Id.t * Id.t * t * t * p
  | Let of (Id.t * Type.t) * t * t * p
  | Var of Id.t * p
  | LetRec of fundef * t * p
  | App of Id.t * Id.t list * p
  | Tuple of Id.t list * p
  | LetTuple of (Id.t * Type.t) list * Id.t * t * p
  | Get of Id.t * Id.t * p
  | Put of Id.t * Id.t * Id.t * p
  | ExtArray of Id.t * p
  | ExtFunApp of Id.t * Id.t list * p
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

val fv : t -> S.t
val f : Syntax.t -> t
val print_kNormal : t -> unit
