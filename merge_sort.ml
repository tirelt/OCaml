let rec merge f l q = 
  match l, q with
  [],r -> r
  |r,[] -> r
  |l_h::l_t,q_h::q_t -> if f l_h q_h then l_h::merge f l_t q else q_h::merge f l q_t

let rec split l = 
  match l with 
  h::m::t -> split t |> (fun (a, b) -> h::a,m::b)
  |_ -> [],l 

let rec sort f l =
  match l with 
  _::_::t -> l |> split |> (fun (a, b) -> merge f (sort f a) (sort f b))
  |_->l
