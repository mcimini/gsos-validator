OCAML=ocamlfind ocamlc -w "-8-10-11-14-25-26" -g -package menhirLib -package batteries -linkpkg -thread
OUTPUT=lnc
PARSERLAN=parserLan.mli parserLan.ml lexerLan.ml 

default:
	ocamllex lexer.mll 
	menhir parser.mly 
	ocamllex lexerLan.mll 
	menhir parserLan.mly 
	$(OCAML) language.ml parser.mli parser.ml lexer.ml $(PARSERLAN) execTransformation.ml main.ml -o $(OUTPUT)

# parser.mli parser.ml lexer.ml $(PARSERLAN)

clean:
	rm *.cmo
	rm *.cmi
	rm $(OUTPUT)

