

-include ~/.makefilehelp


weeks := 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17


# Define helper variables for space and comma
comma := ,
empty :=
space := $(empty) $(empty)

frontpages:
	cnvsapi freshen canvas-frontpages-from-outline --all

all:
	echo $(weeks)
	cnvsapi freshen local-details-from-outline --all
	quarto render
	cnvsapi freshen canvas-details-from-disk --all --confirm
	cnvsapi freshen canvas-frontpages-from-outline --all


welcome instructor:
	cnvsapi freshen local-details-from-outline --include-weeks=$(@)
	quarto render $(@)-details.qmd
	cnvsapi freshen canvas-details-from-disk --include-words=$(@)- --confirm
	cnvsapi freshen canvas-frontpages-from-outline --include-weeks=$(@)

$(weeks):
	cnvsapi freshen local-details-from-outline --include-weeks=$(@)
	quarto render week-$(@)-details.qmd
	cnvsapi freshen canvas-details-from-disk --include-words=week-$(@)- --confirm
	cnvsapi freshen canvas-frontpages-from-outline --include-weeks=$(@)

