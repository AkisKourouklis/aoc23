let reverse_stack stack =
  let reversed_stack = Stack.copy stack in
  let aux = Stack.create () in
  while not (Stack.is_empty reversed_stack) do
    Stack.push (Stack.pop reversed_stack) aux
  done;
  aux
