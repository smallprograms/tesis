all: tesis.pdf

#tesis.pdf: tesis.tex abstract.tex tesis.bib accsys.tex title.tex introduction.tex conclusions.tex rgb_tracking.tex
tesis.pdf: *.tex
	pdflatex tesis.tex
	bibtex tesis
	pdflatex tesis.tex; pdflatex tesis.tex 
	evince tesis.pdf
clean:
	rm tesis.pdf *.log *.aux *.bbl *.blg *~ *.cache *.lof *.lot *.toc


