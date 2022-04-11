file=template

${file}.pdf: ${file}.tex mybib.bib preamble.tex
	pdflatex ${file}
	bibtex   ${file}
	pdflatex ${file}
	pdflatex ${file}

.PHONY: clean
clean:
	rm -rf *.aux
	rm -rf *.bak
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.lof
	rm -rf *.log
	rm -rf *.lot
	rm -rf *.out
	rm -rf *.toc

.PHONY: erase
erase: clean
	rm -rf ${file}.pdf
