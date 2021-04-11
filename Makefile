SECS := $(wildcard secs/*.tex)

all: TesiTriennale.pdf

TesiTriennale.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf TesiTriennale.pdf
	rm -rf build
