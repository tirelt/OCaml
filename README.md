# OCaml

Getting started with OCaml following:
- [OCaml Programming: Correct + Efficient + Beautiful](https://cs3110.github.io/textbook/cover.html)
- [Real World OCaml: Functional Programming for the Masses](https://www.cambridge.org/core/books/real-world-ocaml-functional-programming-for-the-masses/052E4BCCB09D56A0FE875DD81B1ED571)
- [Official docs](https://ocaml.org/docs)

## Install

Install opam if necessary with brew (`brew install opam`). Opam (OCaml Package Manager) will install Ocaml for us and manage the packages.

Then init opam, to setup a minimal Opam environment, configure your environment automatically, and skips any interactive prompts
```bash
opam init --bare -a -y
```
Otherwise you can do:

```bash
opam init
```
<!-- eval $(opam env) -->
Select `Option 5: No, I'll remember to run eval $(opam env) when I need opam`.


Make sure to run `eval $(opam env)` to use Opam


```bash
opam update
opam switch create <switch-name> <compiler-version> e.g. opam switch create main ocaml-base-compiler.5.2.1 # to creat a switch
opam switch list
opam switch <switch-name> # to select a switch 
eval $(opam env) # update environement after switching 
opam install -y <name_1> <name_2> # to install packages 

opam install base # Jane street modern and robust alternative to the standard OCaml
opam install core # on top of Base, data structures, concurrency etc..
opam install stdio # standard IO utilitise
opam install utop # toplevel
opam install dune #build system, similar to make
```

To check the version
```bash
opam --version
```

## Compile

To compile a fine 
```bash 
ocamlc -o hello hello.ml 
```
It creates a `.cmo` (Compiled Oject File), in essance it encapsulates the source code of the `.ml` file into a module named `Name` (if source file = name.ml). We can use `# load "name.cmo"`in toplevel to load the module.
To compile the project 
```bash
ocamlc -c name.ml # to create the name.cmo
ocamlc name.cmo main.ml -o main # can link several cmo at once

```
## Dune

```bash
dune init project dummy_project
dune exec bin/main.exe # to run 
dune build --watch # to automatically recompile when modifier
```

## First steps 

```Ocaml
Ocaml (*To open a session*)
exit 0;; (* to exit *)

utop (* to start toplevel *)
#quit;; 

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



#use "merge_sort.ml" (*to import merge_sort*)

(fun x -> x mod 2 = 0)  (*anonymous function.*)
(>) (* is a function : 'a -> 'a -> bool = <fun>*)
```

tail recurive: doesn't grow an expression,cahnge recursion params instead