.SILENT:


-include ~/.makefilehelp

term = fa2025

json-enrollments := $(term)-enrollments.json
build-user-script := $(term)-add-mysql-user-and-db.sh

clean:
	rm $(json-enrollments)
	rm $(build-user-script)

$(json-enrollments):
	@echo downloading $(json-enrollments) from Canvas
	cnvsapi list enrollments --as-json > $(@)

$(build-user-script) : $(json-enrollments)
	@echo Build $(build-user-script) : to create .sh file, one row per DB account to be created from json-enrollments
	python build-user-script.py > $(@)

download-and-create : $(build-user-script)
	@echo running: $(build-user-script)
