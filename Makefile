all:
	pdflatex -interaction=nonstopmode main
	makeindex main.nlo -s nomencl.ist -o main.nls
	makeindex main
	biber main
	pdflatex main
	makeglossaries main
	pdflatex main
