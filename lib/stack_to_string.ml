let stack_to_string stack =
  let stack_copy = Stack.copy stack in
  let s = ref "" in
  while not (Stack.is_empty stack_copy) do
    s := !s ^ (String.make 1 (Stack.pop stack_copy))
  done;
  !s