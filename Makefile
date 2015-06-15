noveltysearch_slides.pdf: noveltysearch_slides.tex
	pdflatex noveltysearch_slides.tex
	pdflatex noveltysearch_slides.tex


bibtex: bib.bib bib.tex
	pdflatex bib.tex
	bibtex bib.aux
	pdflatex bib.tex

clean:
	@echo "suppression des fichiers de compilation"
	@rm -f *.log *.aux *.dvi *.toc *.lot *.lof *.out *.nav *.snm *.blg *.bbl *.vrb

init: clean
	@echo "suppression des fichiers cibles"
	@rm -f *.pdf
