-include ~/.makefilehelp

help.title = Use to clone or create homework assignments

# cmsc408-sp2025-hw3-autograder
courses := cmsc408 cmsc427
terms := fa2023 sp2024 fa2024 sp2025
hw-sp2025 := hw1 hw2 hw3 hw4 hw5 hw6 hw7 hw8 hw9 del4 del5 del6 del7
hw-fa2024 := hw1 hw2 hw3 hw4 hw5 hw6 hw7 hw8 hw9 del9
folders := autograder template

# Makefile helpers

extract = $(word $(2), $(subst -, ,$(1)))
repo4 = $(subst $(eval) $(eval),-,$(foreach item,1 2 3 4,$(call extract,$(1),$(item))))
repo3 = $(subst $(eval) $(eval),-,$(foreach item,1 2 3,$(call extract,$(1),$(item))))

gh-repo-create-options = --source=. --private --remote=upstream
repo-root = cmsc-vcu

# this adds a new-line to any macro.  use $(\n)
define \n


endef

# Targets
repo-targets := $(foreach course,$(courses),$(foreach term,$(terms),$(foreach folder,$(folders),$(foreach hw,$(hw-$(term)),$(course)-$(term)-$(hw)-$(folder)))))
assignment-roots := $(foreach course,$(courses),$(foreach term,$(terms),$(foreach hw,$(hw-$(term)),$(course)-$(term)-$(hw))))
repo-clone := $(foreach repo,$(repo-targets),$(repo)-clone)

# cmsc408-sp2025-hw5-autograder-clone - runs recipe to clone or create repo as necessary
$(repo-clone) : ; $(recipe-hw-repo-clone)

# cmsc408-sp2025-hw5-clone : cmsc408-sp2025-hw5-autograder-clone  cmsc408-sp2025-hw5-template-clone
$(foreach root,$(assignment-roots),$(eval $(root)-clone : $(foreach folder,$(folders),$(root)-$(folder)-clone )))

define recipe-hw-repo-clone
	@if [ ! -d "$(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4)" ]; then \
		if gh repo view $(repo-root)/$(call repo4,$(@)) --json name >/dev/null 2>&1; then \
			echo "Repository exists: $(repo-root)/$(call repo4,$(@))"; \
			gh repo clone $(repo-root)/$(call repo4,$(@)) $(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4); \
			cd $(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4) && \
			gh repo set-default $(repo-root)/$(call repo4,$(@)); \
		else \
			echo "Creating repo: cmsc-vcu/$(call repo4,$(@))"; \
			mkdir -p $(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4) && \
			cd $(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4) && \
			echo "# $(repo-root)/$(call repo4,$(@))" > README.md && \
			git init && git branch -m main && git add -A && git commit -a -m "initial push" && \
			gh repo create $(repo-root)/$(call repo4,$(@)) $(gh-repo-create-options) && \
			git push --set-upstream upstream main; \
		fi; \
		if [ "$(call extract,$(@),4)" = "template" ]; then \
			echo "Setting $(repo-root)/$(call repo4,$(@)) to template repo" && \
			gh repo edit $(repo-root)/$(call repo4,$(@)) --template; \
		fi; \
	else \
		echo "No clone. Folder already exists: $(call extract,$(@),3)/$(call extract,$(@),2)/$(call extract,$(@),4)"; \
	fi
endef

