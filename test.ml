open Core.Std
open OUnit2
open Brainfuck

let ae exp got _test_ctxt = assert_equal ~printer:String.to_string exp got

let make_test s =
  ("symbol test for " ^ s)>::
    ae s (symbol (command s))

let symbols = [">"; "<"; "+"; "-"; "."; ","; "["; "]"]

let tests =
  List.map ~f:make_test symbols

let () =
  run_test_tt_main ("brainfuck tests" >::: tests)
