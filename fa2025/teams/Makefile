.SILENT:


-include ~/.makefilehelp

# ---- Update these for each new semester
term = fa25
homeworks := hw5 hw6 hw7
# ---



GET_THIRD = $(word 3,$(subst -, ,$1))
homework-commands := $(foreach hw,$(homeworks),add-homework-$(hw))


json-enrollments := $(term)-enrollments.json
build-user-script := $(term)-add-mysql-user-and-db.sh

clean:
	-rm $(json-enrollments)
	-rm $(build-user-script)
	-rm $(term)-*.sh

$(json-enrollments):
	@echo downloading $(json-enrollments) from Canvas
	cnvsapi list enrollments --as-json > $(@)

download-users-from-canvas :
	@echo Downloading from Canvas - BE SURE TO DISABLE ZSCALER INTERNET SECURITY
	make -B $(json-enrollments)

$(build-user-script) : $(json-enrollments)
	@echo Build $(build-user-script) : to create .sh file, one row per DB account to be created from json-enrollments
	python usercli.py new-users --input-user-file=$(json-enrollments) --term-id=$(term) > $(@)
	chmod +x $(@)

initial-users-and-db : $(build-user-script)
	@echo Run: $(build-user-script)  -- script will create mysql users and add _user and _hr databases.

$(homework-commands) : $(json-enrollments)
	echo Adding homework: $(call GET_THIRD,$(@)) using $(json-enrollments)
	python usercli.py add-homework-db --input-user-file=$(json-enrollments) --term-id=$(term) --homework-db=$(call GET_THIRD,$(@)) > $(term)-add-$(call GET_THIRD,$(@))-to-users.sh
	chmod +x $(term)-add-$(call GET_THIRD,$(@))-to-users.sh
	@echo Run: $(term)-add-$(call GET_THIRD,$(@))-to-users.sh -- script will add db to all users
