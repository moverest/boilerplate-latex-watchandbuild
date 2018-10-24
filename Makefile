TO_WATCH = Makefile main.tex

.PHONY: all
all: main.pdf

main.pdf: main.tex
	 # `--shell-escape` enables syntax coloration with `minted`. \
	xelatex --shell-escape main.tex \
	xelatex --shell-escape main.tex # To generate the table of contents.

.PHONY: clean
clean:
	rm *.pdf *.log *.toc *.aux

.PHONY: watchandbuild
watchandbuild:
	while inotifywait -e modify ${TO_WATCH}; do make all; done
