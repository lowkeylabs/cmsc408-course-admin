

.PHONY: help test all

help.title = This help message
help:
	@echo "Available targets:"
	@awk -F '[:=]' '\
		/^[a-zA-Z0-9_-]+:/ && !/^[.](PHONY|help):/ { \
			target = $$1; \
			if (!(target in titles)) { \
				titles[target] = "no title provided"; \
			} \
			order[++count] = target; \
		} \
		/^[a-zA-Z0-9_-]+[.]title[[:space:]]*=/ { \
			split($$1, parts, "."); \
			target = parts[1]; \
			titles[target] = $$2; \
			gsub(/^[ \t]+/, "", titles[target]); \
		} \
		END { \
			for (i = 1; i <= count; i++) { \
				target = order[i]; \
				printf "  %-15s %s\n", target, titles[target]; \
			} \
		}' Makefile

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
	cnvsapi outline checklist --within-days=14


.PHONY: details
details:
	cd details && quarto render && cnvsapi freshen canvas-details-from-disk --all --confirm
	@echo "Details changed. Be sure to freshen frontpages when ready!"
