#Script para compilação de documentos LaTeX com BibTeX
# Autor: OgliariNatan
# Atualizado em: 20250923
pdflatex main.tex && bibtex main.aux && pdflatex main.tex && pdflatex main.tex


# Roda com erros
#pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex
