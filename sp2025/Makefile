SHELL := C:/Program Files/Powershell/7/pwsh.exe
.SHELLFLAGS := -NoLogo -NoProfile -Command

help:
	cat Makefile

all:
	cnvsapi --version
	cd gantts; quarto render
	cnvsapi freshen canvas-assignment-groups
	cnvsapi freshen canvas-objects-from-outline 
	cnvsapi freshen canvas-resources-from-outline --all
	cd lectures; cnvsapi freshen lecture-headers-from-outline --all
	cnvsapi freshen canvas-frontpages-from-outline --all
