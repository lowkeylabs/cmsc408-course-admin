

all:
	quarto render
	cnvsapi freshen canvas-details-from-disk --all --confirm

frontpages:
	cnvsapi freshen canvas-frontpages-from-outline --all

3 4 5 6 7 8 9 10:
	quarto render week-$(@)-details.qmd
	cnvsapi freshen canvas-details-from-disk --include-words=week-$(@) --confirm
	cnvsapi freshen canvas-frontpages-from-outline --include-weeks=$(@)

