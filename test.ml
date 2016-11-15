open Core.Std
open OUnit2
open Brainfuck

let ae exp got _test_ctxt = assert_equal ~printer:Char.to_string exp got

let get (o: 'a option) : 'a =
  match o with
    | Some v -> v
    | None -> raise (Invalid_argument "expected something")

let make_test s =
  ("symbol test for " ^ (Char.to_string s))>::
    ae s (symbol (get (command s)))

let symbols = ['>'; '<'; '+'; '-'; '.'; ','; '['; ']']

let tests =
  List.map ~f:make_test symbols

let () =
  run_test_tt_main ("brainfuck tests" >::: tests)
