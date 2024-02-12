open Match_str
open Stack_to_string

let day_2_step_1 () =
  let ic = open_in "day2input.txt" in

  try
    let n = in_channel_length ic in
    let data = really_input_string ic n in

    (* let red_limit = 12 in
    let green_limit = 13 in
    let blue_limit = 14 in
    let cube_arr = Array.make 100 0 in

    let current_red = ref 0 in
    let current_green = ref 0 in
    let current_blue = ref 0 in *)

    let letter_stack = Stack.create () in
    let test = match_str "Game 1:" "1:" in
    if test then
      print_endline "Matched"
    else
      print_endline "Not Matched";

    for i = 0 to n - 1 do
      let letter = data.[i] in
      Stack.push letter letter_stack;

      if letter = ':' then (
        let _ = Stack.pop letter_stack in
        let tmp_stack = Stack.create () in
        let letter_stack_length = Stack.length letter_stack in

        for _ = 1 to letter_stack_length do
          if not (Stack.is_empty letter_stack) then
            let letter_stack_pop = Stack.pop letter_stack in
            if Char.code letter_stack_pop >= Char.code '0' && Char.code letter_stack_pop <= Char.code '9' then
              Stack.push letter_stack_pop tmp_stack
        done;
        
        Printf.printf "%s" (stack_to_string tmp_stack);
        print_newline ();
        Stack.clear tmp_stack;
        Stack.clear letter_stack;
      );

      if letter = 'b' then ();
      if letter = 'r' then ();
      if letter = 'g' then ();

      if letter = '\n' || i = n - 1 then (
        Stack.clear letter_stack;
        (* print_endline ""; *)
      );
    done;

    close_in ic
  with e ->
    close_in_noerr ic;
    raise e