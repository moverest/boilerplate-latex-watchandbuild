MAIN_FILE = main
TO_WATCH = Makefile ${MAIN_FILE}.tex

.PHONY: all
all: ${MAIN_FILE}.pdf

${MAIN_FILE}.pdf: ${MAIN_FILE}.tex
	 # `--shell-escape` enables syntax coloration with `minted`. \
	xelatex --shell-escape ${MAIN_FILE}.tex \
	xelatex --shell-escape ${MAIN_FILE}.tex # To generate the table of contents.

.PHONY: clean
clean:
	rm *.pdf *.log *.toc *.aux

.PHONY: watchandbuild
watchandbuild:
	while inotifywait -e modify ${TO_WATCH} || true; do make all; done
