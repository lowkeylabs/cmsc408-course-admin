.SILENT:

HTML_DEST = ../../docs/fa2023
QMD_FILES := $(wildcard *.qmd)
HTML_FILES := $(patsubst %.qmd,$(HTML_DEST)/%.html,$(QMD_FILES))

default:
	type Makefile.

lectures: $(HTML_FILES)

$(HTML_DEST)/%.html: %.qmd
	quarto render $(<)
