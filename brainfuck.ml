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
    | '>' -> PointerIncrement
    | '<' -> PointerDecrement
    | '+' -> Increment
    | '-' -> Decrement
    | '.' -> Output
    | ',' -> Input
    | '[' -> LoopStart
    | ']' -> LoopEnd
    | _   -> PointerIncrement

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

