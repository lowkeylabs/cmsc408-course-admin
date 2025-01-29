
-include ~/.makefilehelp

from-term = fa2024
to-term = sp2025
from-crse = cmsc408
to-crse = cmsc408

extract = $(word $(2), $(subst -, ,$(1)))
gh-repo-create-options = --source=. --private --remote=upstream

homeworks := hw1 hw2 hw3 hw4 hw5 hw6 hw7 hw8 hw9 hw10 hw11 hw12 hw13
autograder-copy-targets := $(foreach hw,$(homeworks),$(hw)-autograder-copy)
template-copy-targets := $(foreach hw,$(homeworks),$(hw)-template-copy)

# this adds a new-line to any macro.  use $(\n)
define \n


endef

hw-repo-copy.title = "make hw-repo-copy" for help
hw-repo-copy:
	@echo Copy previous term repo to new term
	@echo ex: make hw3-template-copy
	@echo ex: make hw3-autograder-copy


define recipe-hw-repo-copy
	gh repo clone cmsc-vcu/$(from-crse)-$(from-term)-$(call extract,$(@),1)-$(call extract,$(@),2)  $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2)
	rm -fR $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2)/.git
	cd $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2) && git init && git branch -M main && git add -A && git commit -a -m "initial copy from $(from-term)"
	cd $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2) && gh repo create cmsc-vcu/$(to-crse)-$(to-term)-$(call extract,$(@),1)-$(call extract,$(@),2) $(gh-repo-create-options)
	cd $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2) && git push --set-upstream upstream main
endef

define recipe-mark-as-template
	cd $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2) && gh repo edit cmsc-vcu/$(to-crse)-$(to-term)-$(call extract,$(@),1)-$(call extract,$(@),2) --template
endef

define recipe-copy-autograder-makefile
	cp -f hw1/$(to-term)/$(call extract,$(@),2)/Makefile $(call extract,$(@),1)/$(to-term)/$(call extract,$(@),2)/Makefile
endef


$(template-copy-targets) : ; $(recipe-hw-repo-copy) $(\n) $(recipe-mark-as-template)
$(autograder-copy-targets) : ; $(recipe-hw-repo-copy) $(\n) $(recipe-copy-autograder-makefile)

