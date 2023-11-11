# Project: Project 3
# Autor:   Evgenii Shiliaev
# Datum:   05.04.2021

default: proj3.pdf clean

proj3.pdf: *.tex
	latex *.tex
	latex *.tex
	dvips -t a4 *.dvi
	ps2pdf -sPAPERSIZE=a4 *.ps

clean:
	rm -r *.aux
	rm -r *.dvi
	rm -r *.log
	rm -r *.out
	rm -r *.ps

# End of Makefile
