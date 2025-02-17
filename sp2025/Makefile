
-include ~/.makefilehelp

.PHONY: help test all

test:
	cnvsapi freshen canvas-lectures-from-outline --all


freshen-all.title = Freshen all elements of site
freshen-all:
	cnvsapi --version
	cd details && quarto render && cnvsapi freshen canvas-details-from-disk --all --confirm
	cd gantts && quarto render
	cd lectures && cnvsapi freshen lecture-headers-from-outline --all
	cd pages && quarto render && cnvsapi freshen canvas-pages-from-disk --all --confirm
	cnvsapi freshen canvas-lectures-from-outline --all
	cnvsapi freshen canvas-lectures-summary-page
	cnvsapi freshen canvas-resources-from-outline --all
	cnvsapi freshen canvas-objects-from-outline --all
	cnvsapi freshen canvas-assignment-groups --all
	cnvsapi freshen canvas-roster-from-source
	cnvsapi freshen canvas-frontpages-from-outline --all
	
objects:
	cnvsapi freshen canvas-objects-from-outline --all
	cnvsapi freshen canvas-assignment-groups --all
	cnvsapi freshen canvas-frontpages-from-outline --all

.PHONY: quizzes
quizzes:
	cnvsapi freshen canvas-objects-from-outline --groups=graded_quizzes 

.PHONY: frontpages
frontpages:
	cnvsapi freshen canvas-assignment-groups --all
	cnvsapi freshen canvas-frontpages-from-outline --all


.PHONY: discussions
discussions:
	cnvsapi freshen canvas-objects-from-outline --groups=graded_discussions --all

.PHONY: surveys
surveys:
	cnvsapi freshen canvas-objects-from-outline --groups=graded_surveys --all

.PHONY: resources
resources:
	cnvsapi freshen canvas-resources-from-outline --all


.PHONY: projects
projects:
	cnvsapi freshen canvas-objects-from-outline --groups=projects --all


.PHONY: homeworks
homeworks:
	cnvsapi freshen canvas-objects-from-outline --groups=homeworks --all

.PHONY: checklist
checklist:
	cnvsapi outline checklist --within-days=17


.PHONY: details
details:
	cd details && quarto render && cnvsapi freshen canvas-details-from-disk --all --confirm
	@echo "Details changed. Be sure to freshen frontpages when ready!"
