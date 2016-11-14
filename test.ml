open Core.Std
open OUnit2
open Brainfuck

let ae exp got _test_ctxt = assert_equal ~printer:String.to_string exp got

let tests =
  ["symbol test for >">::
     ae ">" (symbol (command ">"));
   "symbol test for >">::
     ae "<" (symbol (command "<"));
   "symbol test for >">::
     ae "+" (symbol (command "+"));
   "symbol test for >">::
     ae "-" (symbol (command "-"));
   "symbol test for >">::
     ae "." (symbol (command "."));
   "symbol test for >">::
     ae "," (symbol (command ","));
   "symbol test for >">::
     ae "[" (symbol (command "["));
   "symbol test for >">::
     ae "]" (symbol (command "]"))
  ]

let () =
  run_test_tt_main ("brainfuck tests" >::: tests)
