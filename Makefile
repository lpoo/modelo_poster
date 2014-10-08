ROOTFILE = poster
COMPILER = latexmk -pdf -pdflatex='pdflatex -interaction nonstopmode'

## comandos  : mostra os comandos disponíveis
comandos:
	@grep -E '^##' Makefile | sed -e 's/##//g'

## compila   : compila o poster
compila:
	${COMPILER} ${ROOTFILE}

.PHONY: clean-all clean

## clean-all : remove todos os arquivos gerados ao compilar
clean-all: clean
	latexmk -C

## clean     : remove os arquivos gerados ao compilar (exceto o PDF)
clean:
	latexmk -c
