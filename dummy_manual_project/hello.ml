
let say_hello () =
    print_endline "Hello world!"

let my_func = function
  None -> 0
  | Some x -> x +1

let _ =
  say_hello ();
  [1;2;3;4] |> MyModule.first |> my_func