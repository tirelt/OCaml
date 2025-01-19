# OCaml

Getting started with OCaml

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

 ocamlfind ocamlopt -package base -package stdio -package core -package re -linkpkg -o "$executable_path" "$file_path"

 $ ocamlc -o test test.ml # 