all:
	latexrun --bibtex-cmd=biber note

bibliography:
	bibgetter pull --file latex.out/*.aux --local bibliography.bib

.PHONY: clean
clean:
	latexrun --clean-all

diff:
	git latexdiff $(COMMIT) main --main note.tex --output diff-note.pdf --ignore-makefile --run-biber

format:
	tex-fmt --nowrap note.tex
	bibgetter format --local=bibliography.bib

expand:
	latexpand --biber=latex.out/note.bbl --empty-comments --verbose article.tex > expanded.tex
