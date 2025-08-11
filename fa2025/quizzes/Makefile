.SILENT:

-include ~/.makefilehelp


#SHELL := C:/Users/JohnLeonard/AppData/Local/Microsoft/WindowsApps/bash.exe
#.SHELLFLAGS := -c
#PATH := /usr/local/bin:/usr/bin:$(PATH)

# Define a variable for the source files
MD_FILES := $(wildcard *.md)

# Define a variable for the output files
ZIP_FILES := $(MD_FILES:.md=.zip)

# Pattern rule to convert .md to .zip
%.zip: %.md
	@echo "Creating $(@) from $(<)"
	text2qti $<

.PHONY: start-all
start-all.title = hide
start-all:
	@echo "Building $(ZIP_FILES)"
	@echo "---------------------"

all.title = Create quiz bank with all quizzes
.PHONY: all
all: clean start-all $(ZIP_FILES)
	@echo "---------------------"
	@echo "Complete."

quiz2-bank.zip : q2-bank-erd-blooms-2.zip q2-bank-erd-blooms-3.zip q2-bank-erd-blooms-4.zip q2-bank-erd-blooms-5.zip 
	7z a $(@) $(^)

# Default target
all: $(ZIP_FILES)

# Clean target to remove generated .zip files
clean.help = Clean folder
.PHONY: clean
clean:
	rm -f *.zip
	@echo "Removed all zip files."
