.SILENT:


default:
	type Makefile

quiz1-banks:
	@echo Building quiz 1 question banks
	text2qti quiz1-bank-erd-blooms-2.md
	text2qti quiz1-bank-erd-blooms-3.md
	text2qti quiz1-bank-erd-blooms-4.md
	text2qti quiz1-bank-erd-blooms-5.md
	dir quiz1-bank-*.zip

quiz2-banks:
	@echo Building quiz 2 question banks
	cd quiz2-relational-stuff; text2qti quiz2-bank-relations-blooms-2.md
	cd quiz2-relational-stuff; text2qti quiz2-bank-relations-blooms-3.md
	cd quiz2-relational-stuff; text2qti quiz2-bank-relations-blooms-4.md
	cd quiz2-relational-stuff; text2qti quiz2-bank-relations-blooms-5.md

q2 : quiz2-banks
