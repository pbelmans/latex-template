all:
	latexrun --bibtex-cmd=biber note

.PHONY: clean
clean:
	latexrun --clean-all

diff:
	git latexdiff $(COMMIT) main --main note.tex --output diff-note.pdf --ignore-makefile --run-biber
