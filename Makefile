.PHONY: view website default

PAPER = tbpeg

${PAPER}.pdf:
${PAPER}.dvi:

%.pdf: %.dvi
	dvipdf $^

%.dvi: %.tex
	latex $^

view: ${PAPER}.pdf
	okular $^

website:
	latex 2>&1 ${PAPER}.tex
	latex ${PAPER}.tex
	dvipdf ${PAPER}.dvi

default: ${PAPER}.pdf
