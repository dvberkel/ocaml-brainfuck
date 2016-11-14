open Core.Std
open OUnit2
open Brainfuck

let ae exp got _test_ctxt = assert_equal ~printer:String.to_string exp got

let tests =
  ["framework test">::
     ae "the quick brown fox jumped over the lazy dog" "the quick brown fox jumped over the lazy dog";
  ]

let () =
  run_test_tt_main ("brainfuck tests" >::: tests)
