
INC = $(shell ls include/*.tex)

all: linux-packaging.pdf

%.pdf: %.tex $(INC)
	pdflatex $<

clean:
	-rm -f *.pdf *.log *.aux
