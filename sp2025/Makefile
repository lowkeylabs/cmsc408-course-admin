

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
	@echo "shell: $(SHELL)"
	@echo "make_host: $(MAKE_HOST)"
	@echo "os: $(OS)"
	@echo "path: $(PATH)"
	$(SHELL) -c pwd
	@pwd
	cnvsapi --version
	quarto --version
	awk --version | grep -oP 'GNU Awk \K[0-9.]+'
	sed --version | grep -oP '(?<=\(GNU sed\) )[0-9.]+'
	grep --version | grep -oP '(?<=\(GNU grep\) )[0-9.]+'


all.title = Rebuild site from scratch
all:
	cnvsapi --version
	cd gantts; quarto render
	cnvsapi freshen canvas-assignment-groups
	cnvsapi freshen canvas-objects-from-outline 
	cnvsapi freshen canvas-resources-from-outline --all
	cd lectures; cnvsapi freshen lecture-headers-from-outline --all
	cnvsapi freshen canvas-frontpages-from-outline --all
