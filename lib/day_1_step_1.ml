open Convert_char_to_int

let day_1_step_1 () = 
  let ic = open_in "day1input.txt" in
  
  try
    let n = in_channel_length ic in
    let data = really_input_string ic n in

    let first_digit = ref None in
    let last_digit = ref None in
    let sum = ref 0 in

    for i = 0 to n - 1 do
      let letter = data.[i] in
      let is_digit c =
        let ascii = Char.code c in
        ascii >= 48 && ascii <= 57
      in

      if is_digit letter then (
        match !first_digit with
        | None -> first_digit := Some letter
        | Some _ -> last_digit := Some letter;
      );
      
      if data.[i] = '\n' || i = n - 1 then (
        if !last_digit = None then last_digit := !first_digit;
        
        let concated a b = int_of_string ((string_of_int a) ^ (string_of_int b)) in

        let total = concated (convert_char_to_int !first_digit) (convert_char_to_int !last_digit) in

        sum := !sum + total;

        flush stdout;

        first_digit := None;
        last_digit := None;
      );

    done;

    print_endline (string_of_int !sum);

    close_in ic
  with e ->
    close_in_noerr ic;
    raise e