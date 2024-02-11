let convert_char_to_int char_opt =
  match char_opt with
  | None -> 0
  | Some c -> Char.code c - 48