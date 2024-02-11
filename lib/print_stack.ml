let print_stack stack =
  Stack.iter (fun item -> print_char item;) stack
