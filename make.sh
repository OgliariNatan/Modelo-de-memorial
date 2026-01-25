#Script para compilação de documentos LaTeX com BibTeX
# Autor: OgliariNatan
# Atualizado em: 20260125
rm -f main.aux main.bbl main.blg main.log main.out main.toc main.pdf main.fdb_latexmk

#pdflatex -interaction=nonstopmode main.tex && \
#bibtex main && \
#pdflatex -interaction=nonstopmode main.tex && \
#pdflatex -interaction=nonstopmode main.tex


# Roda com erros
pdflatex main.tex ; bibtex main; pdflatex main.tex ; pdflatex main.tex
