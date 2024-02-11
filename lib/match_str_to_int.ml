let match_str_to_int (s: string) : int =
  let rec match_number_helper (s: string) : int =
    match s with
    | "" -> 0  (* Base case: return 0 if the string is empty *)
    | "one" -> 1
    | "two" -> 2
    | "three" -> 3
    | "four" -> 4
    | "five" -> 5
    | "six" -> 6
    | "seven" -> 7
    | "eight" -> 8
    | "nine" -> 9
    | _ -> match_number_helper (String.sub s 1 (String.length s - 1))  (* Ignore the first character and continue *)
  in
  match_number_helper (String.lowercase_ascii s)  (* Convert string to lowercase for case insensitivity *)