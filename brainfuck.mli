(*
 * Commands are atomic operation.
 *)

type command

val command : char -> command option
val symbol : command -> char

type state

val start: unit -> state
val point_at: state -> int -> state
val step: state -> command -> state
