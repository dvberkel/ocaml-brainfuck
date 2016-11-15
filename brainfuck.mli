(*
 * Commands are atomic operation.
 *)

type command

val command : char -> command
val symbol : command -> char
