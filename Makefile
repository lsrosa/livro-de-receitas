all:
	pdflatex -interaction=nonstopmode main
	makeindex main.nlo -s nomencl.ist -o main.nls
	makeindex main
	biber main
	pdflatex main
	makeglossaries main
	pdflatex main


clean:
	rm -rf main.aux main.bcf main.blg main.glo main.glsdefs main.ilg main.lof main.lot main.nlo main.pdf main.synctex.gz main.toc 
	rm -rf kaobook.cls main.bbl main.glg main.gls main.idx main.ind main.log main.mw main.nls main.run.xml main.xdy
