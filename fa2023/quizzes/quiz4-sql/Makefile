.SILENT:


default:
	type Makefile

quiz = quiz4-sql

$(quiz):
	@echo Building $(quiz) question banks
	text2qti $(quiz)-blooms-2.md
	text2qti $(quiz)-blooms-3.md
	text2qti $(quiz)-blooms-4.md
	text2qti $(quiz)-blooms-5.md

q : quiz4-sql
