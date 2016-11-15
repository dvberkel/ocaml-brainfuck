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

type state = {
  pointer: int
}

let start () =
  { pointer = 0 }

let point_at a_state pointer =
  { a_state with pointer = pointer }

let step a_state a_command =
  match a_command with
    | PointerIncrement -> { pointer = a_state.pointer + 1 }
    | PointerDecrement -> { pointer = a_state.pointer - 1 }
    | Increment        -> a_state
    | Decrement        -> a_state
    | Output           -> a_state
    | Input            -> a_state
    | LoopStart        -> a_state
    | LoopEnd          -> a_state
