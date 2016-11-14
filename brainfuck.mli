(*
 * Commands are atomic operation.
 *)

type command

val command : string -> command
val symbol : command -> string
