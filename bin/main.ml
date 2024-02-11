open Aoc.Day_1_step_1
open Aoc.Day_1_step_2

(* create a function with a name get_calibration_input *)

let () =
  let arg = Sys.argv.(1) in
  match arg with
  | "day1step1" -> day_1_step_1 ()
  | "day1step2" -> day_1_step_2 ()
  | _ -> print_endline "Unknown command"
