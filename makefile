all: miniml expr evaluation project_tests

miniml: miniml.ml
	ocamlbuild -use-ocamlfind miniml.byte

expr: expr.ml
	ocamlbuild -use-ocamlfind expr.byte

evaluation: evaluation.ml
	ocamlbuild -use-ocamlfind evaluation.byte

project_tests: project_tests.ml
	ocamlbuild -use-ocamlfind project_tests.byte

clean:
	rm -rf _build *.byte