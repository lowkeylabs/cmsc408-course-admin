.SILENT:

HTML_DEST = ../../docs/fa2024
QMD_FILES := $(wildcard lecture-*.qmd) index.qmd
HTML_FILES := $(patsubst %.qmd,$(HTML_DEST)/%.html,$(QMD_FILES))

default:
	type Makefile.

lectures: $(HTML_FILES)

$(HTML_DEST)/%.html: %.qmd
	@echo Rendering $(<) to $(HTML_DEST)/$(@)
	quarto render $(<) --to revealjs
