let empty_stack_but_keep_first stack =
  let first_item = ref None in
  if Stack.is_empty stack = false then
    first_item := Some (Stack.pop stack);
  Stack.clear stack;
  match !first_item with
  | None -> ()
  | Some item -> Stack.push item stack