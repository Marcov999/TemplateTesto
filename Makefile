SECS := $(wildcard secs/*.tex)

all: KoebeDistortion.pdf

KoebeDistortion.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf KoebeDistortion.pdf
	rm -rf build
