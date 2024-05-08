all:
	latexrun --bibtex-cmd=biber note

.PHONY: clean
clean:
	latexrun --clean-all
