.SILENT:

## DECKTAPE is required to create PDFs of the lecture slides.
## DECKTAPE is a nodejs command line program. 
##
## To install decktape, first install NodeJS.  If using volta, don't forget "developer mode"
## Then, install decktape with the npm command below.
## >> npm install decktape -g --strict-ssl-false


default:
	echo Scripts to create PDFs of course assets for ABET submission
	type Makefile

all: syllabus outline \
	all-homeworks \
	all-projects \
	all-lectures \
	echo done!

syllabus:
	curl --output cmsc508-fa2023-syllabus.pdf --location \
	https://docs.google.com/document/d/1YUqqaXY3Ilv5jKSkIgBdsJ3cTQnSML3vWxllmHE52YM/export?format=pdf

outline:
	curl --output cmsc508-fa2023-outline.pdf --location \
	https://docs.google.com/spreadsheets/d/13-susrPV2Rxk4wvX44jUiwzwS5BNMLvncmlIOFosMUk/export?format=pdf

homework-01.pdf:
	copy precious\\cmsc508-fa2023-homework-01.pdf .

homework-02.gid = 16rEpbDF7XepCWVvXR8FHqpL3zK-zFWD0CtWufif5PJo
homework-03.gid = 1g-r3Ye69ndnYDPnwx5qPaEHrQDcck-7VNaROL9DNoXQ
homework-04.gid = 1gC_Rw27aouEYskTlFhIWhOeJvVov43OSK_1C-R2gFjc
homework-05.gid = 1tGcErn-jXP1dIsh28e03AF6SHnPpOJyb2ATKQxCb3s0
homework-06.gid = 1rUtL6BaJNk8kYftLfZAAvOtC0sXzshVmaFi0UgthVOw
homework-07.gid = 1Mnpi6LkoPeJYw-NpadC6j5GIrv-8Kjilp1KVVPoT6sA
homework-08.gid = 1lrtYmPZEnbQjR2dXiQNZXEt2JUlPAv9jj0MuG4pLSvU
homework-09.gid = 1Nu7vJlTfC9hm1tpkZtN0BK1AFDhMYpX1LfN2yFwQ6xE
homework-10.gid = 1wGNifqSUX0aCX7ASYK1MfR2CDAe-TQDd3RZ5l036dkI
homework-11.gid = 13LzbyW8ZJMlWbJG2z59gm13FNTCnJsf3DgLwyquuVck

lect-01.name = lect01-welcome-to-cmsc508
lect-02.name = lect02-entity-relation-models-1
lect-03.name = lect03-entity-relation-models-2
lect-04.name = lect04-ddl-dml-sqllite-mysql
lect-05.name = lect05-relational-models
lect-06.name = lect06-relational-algebra-1
lect-07.name = lect07-relational-algebra-2
lect-08.name = lect08-analysis-and-normal-forms-1
lect-09.name = lect09-analysis-and-normal-forms-2
lect-10.name = lect10-analysis-and-normal-forms-3
lect-11.name = lect11-quiz-review-session
lect-12.name = lect12-intro-to-sql
lect-13.name = lect13-sql-selects
lect-14.name = lect14-sql-create-insert-delete-update
lect-15.name = lect15-sql-toolset
lect-16.name = lect16-intro-to-joins
lect-17.name = lect17-joins-and-aggregates
lect-18.name = lect18-joins-and-aggregates-2
lect-19.name = lect19-intro-to-apis
lect-20.name = lect20-writing-apis
lect-21.name = lect21-referential-integrity-1
lect-22.name = lect22-referential-integrity-3
lect-23.name = lect23-procedures-and-triggers-1
lect-24.name = lect24-procedures-and-triggers-2

## https://vcu.mediaspace.kaltura.com/downloadmedia/index/download/flavorid/1_rqle478n
## Need to figure out how to connect through 2-factor credentials.

## videos are manually downloaded.  Old-school, but effective.

## Project PDF files.
## These were manually printed to PDF from inside google docs
## Then, rubrics from canvas were manually printed.

project-overview.gid = 1RX8mk-gyCJGU1z5J_nn_DPisZTpJKWm97OqqS2BzM2s
project-1.gid = 1y87UGkKvhUDJh6HSB4aKXNwu6FuNTlxeYgfZZ6r52-U
project-2.gid = 1WtW9Gif2_heVGoECfvGBd770uK1z-CUhxGIPuayJfpI
project-3.gid = 1SKyOodtiVbiCA9FDvzHuFzS-oTuC1-Rxss3c_grkAtM
project-4.gid = 126A5mDV6Lkk39q5_JN_wFukJRPIgSxRUPnw5nvUBDzw
project-5.gid = 1dXbSL4ByT3xTidj3BifuI4YaoxdyHqrPx1H_nNzFax4
project-6.gid = 1DGjFBaMdVoo0pMB0zhDjtYO35ekJoiMPF2JTDzn2S3g
project-7.gid = 1f50UeSlwPurWg7wLjjGcexapbI2B7YPBOL5IFsXbcMs


## Note that homework 1 is hardcoded.  It's a PDF of the pre-class survey stored in .\precious
## The rest of the homeworks are google docs converted to PDF.
hwks := 02 03 04 05 06 07 08 09 10 11
all-homeworks : homework-01.pdf $(foreach hwk,$(hwks),homework-$(hwk).pdf)
$(foreach hwk,$(hwks),$(eval homework-$(hwk).pdf : ; curl --output cmsc508-fa2023-homework-$(hwk).pdf --location \
	https://docs.google.com/document/d/$(homework-$(hwk).gid)/export?format=pdf ))

## project overview and individual project deliverables
## Each project deliverable is stored in it's own google doc, with gid listed above.
prjs := overview 1 2 3 4 5 6 7
all-projects : $(foreach prj,$(prjs),project-$(prj).pdf)
$(foreach prj,$(prjs),$(eval project-$(prj).pdf : ; curl --output cmsc508-fa2023-project-$(prj).pdf --location \
	https://docs.google.com/document/d/$(project-$(prj).gid)/export?format=pdf ))

quizzes := 1 2 3 4
all-quizzes : $(foreach quiz,$(quizzes),quiz-$(quiz).pdf)
$(foreach quiz,$(quizzes),$(eval quiz-$(quiz).pdf : ; \
	copy precious\cmsc508-fa2023-quiz-$(quiz).pdf . ))

define recipe-lect-to-pdf
	@echo Downloading $(lect-$(word 2,$(subst -, ,$(subst ., ,$(@)))).name).html to temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf
	decktape reveal https://lowkeylabs.github.io/cmsc508-fa2023-admin/$(lect-$(word 2,$(subst -, ,$(subst ., ,$(@)))).name).html temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf
	@echo Converting to 2-pages per page: temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf cmsc508-fa2023-lecture-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf
	python pdftool.py two-per-page --output cmsc508-fa2023-lecture-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf 
endef

## Lectures - these take a LONG time to create. They're labeled 01-25
## Lectures are stored as HTML files (RevealJS) on my personal GITHUB
## Edit the lects string to only print what you need.
# lects := 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
lects := 01 02 03 04 05 07 08 09 10 11 12 13 14 15 16 17 18 19
## 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
all-lectures : $(foreach lect,$(lects),lecture-$(lect).pdf)
$(foreach lect,$(lects),$(eval lecture-$(lect).pdf : ; $$(recipe-lect-to-pdf) ))

## Lecture 6 is manually created by combine HTML lecture with previously
## printed PPTX to PDF document.
lecture-06.pdf:
	decktape reveal https://lowkeylabs.github.io/cmsc508-fa2023-admin/$(lect-$(word 2,$(subst -, ,$(subst ., ,$(@)))).name).html temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf
	python pdftool.py combine-pdf --output lecture-06-temp.pdf temp-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf lect06a-Relational-Algebra.pdf
	python pdftool.py two-per-page --output cmsc508-fa2023-lecture-$(word 2,$(subst -, ,$(subst ., ,$(@)))).pdf lecture-$(word 2,$(subst -, ,$(subst ., ,$(@))))-temp.pdf 



## Still to do, figure out how to download lectures videos from Kaltura.

