open Core.Std

type command =
  | PointerIncrement
  | PointerDecrement
  | Increment
  | Decrement
  | Output
  | Input
  | LoopStart
  | LoopEnd

let command symbol =
  match symbol with
    | '>' -> Some PointerIncrement
    | '<' -> Some PointerDecrement
    | '+' -> Some Increment
    | '-' -> Some Decrement
    | '.' -> Some Output
    | ',' -> Some Input
    | '[' -> Some LoopStart
    | ']' -> Some LoopEnd
    | _   -> None

let symbol command =
  match command with
    | PointerIncrement -> '>'
    | PointerDecrement -> '<'
    | Increment        -> '+'
    | Decrement        -> '-'
    | Output           -> '.'
    | Input            -> ','
    | LoopStart        -> '['
    | LoopEnd          -> ']'

