(*
 * Commands are atomic operation.
 *)

type command

val command : char -> command option
val symbol : command -> char
