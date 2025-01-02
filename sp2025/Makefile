

test:
	@echo "shell: $(SHELL)"
	@echo "make_host: $(MAKE_HOST)"
	@echo "os: $(OS)"
	@echo "path: $(PATH)"
	@pwd
	cnvsapi --version
	quarto --version
	awk --version
	sed --version
	grep --version


all:
	cnvsapi --version
	cd gantts; quarto render
	cnvsapi freshen canvas-assignment-groups
	cnvsapi freshen canvas-objects-from-outline 
	cnvsapi freshen canvas-resources-from-outline --all
	cd lectures; cnvsapi freshen lecture-headers-from-outline --all
	cnvsapi freshen canvas-frontpages-from-outline --all
