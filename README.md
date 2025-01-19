# OCaml

Getting started with OCaml following:
- [Real World OCaml: Functional Programming for the Masses](https://www.cambridge.org/core/books/real-world-ocaml-functional-programming-for-the-masses/052E4BCCB09D56A0FE875DD81B1ED571)
- [Official docs](https://ocaml.org/docs)

## Install

Install opam if necessary with brew (`brew install opam`). Opam (OCaml Package Manager) will install Ocaml for us and manage the packages.

Then init opam:

```bash
opam init
```
<!-- eval $(opam env) -->
Select `Option 5: No, I'll remember to run eval $(opam env) when I need opam`.

Finally install the packages

```bash
opam install base
opam install core
opam install stdio
```

To check the version
```bash
opam --version
```
make sure to run `eval $(opam env)`.

## Compile

To compile a fine 
```bash 
ocamlc -o hello hello.ml 
```
## First steps 

```Ocaml
Ocaml (*To open a session*)
1+2;; (*ctrl c to interupt line.*)
1=2;;

let x = 200 in x * x * x

let cube x = x * x * x #function

let rec factorial a =
    if a = 1 then 1 else a * factorial (a - 1) (*recursive function*)

let isvowel c = (*pattern matching*)
    match c with
    'a' -> true
    | 'e' -> true
    | 'i' -> true
    | 'o' -> true
    | 'u' -> true
    | _ -> false

[1; 2; 3] (*list*)
0::my_list (*concat 0 to my list "cons". In pattern matchin it deconstruct the list.*)
list_1@list_2 (*append lists*)
let rec length l =
    match l with
    [] -> 0 the list has zero elements (the “base case”)
    | _::t -> 1 + length t

let rec every_other l =
    match l with 
    a::_::t -> a::every_other t
    |_->l

let rec reverse_aux l q = 
    match l with 
    [] -> q;
    |h::t -> reverse_aux t (h::q)

let reverse l = reverse_aux l []

let rec count_true l =
  match l with 
  [] -> 0  
  |h::t -> (if h then 1 else 0) + count_true t;;

exit 0;;

#use "merge_sort.ml" (*to import merge_sort*)

(fun x -> x mod 2 = 0)  (*anonymous function.*)
(>) (* is a function : 'a -> 'a -> bool = <fun>*)
```

tail recurive: doesn't grow an expression,cahnge recursion params instead