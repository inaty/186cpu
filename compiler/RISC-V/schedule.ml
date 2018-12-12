open Asm

module I = Map.Make(struct type t = int let compare = compare end)

type inst = Inst of Id.t * Type.t * exp

(* let graph e as ras  =
  match e with *)

let imap e n =
  match e with
  | Ans(exp) ->
      schedule

let g e =
  match e with
  | Ans(exp) ->

let f (Prog(ftable, fundefs, e)) =
  Prog(ftable, )
