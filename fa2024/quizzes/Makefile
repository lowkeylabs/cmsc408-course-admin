.SILENT:
# Define a variable for the source files
MD_FILES := $(wildcard *.md)

# Define a variable for the output files
ZIP_FILES := $(MD_FILES:.md=.zip)

# Pattern rule to convert .md to .zip
%.zip: %.md
	@echo Creating $(@) from $(<)
	text2qti $<

.PHONY: help
help:
	@echo Available targets in the Makefile
	@grep -E '^[a-zA-Z_-]+\.help' Makefile | sed 's/\.help[[:space:]]*=/:\t/'

.PHONY: start-all
start-all:
	@echo Building $(ZIP_FILES)
	@echo ---------------------

all.help = Not used
.PHONY: all
all: clean start-all $(ZIP_FILES)
	@echo ---------------------
	@echo Complete.

# Default target
all: $(ZIP_FILES)

# Clean target to remove generated .zip files
clean.help = Remove zip files
.PHONY: clean
clean:
	rm -f *.zip
	@echo Removed all zip files.
