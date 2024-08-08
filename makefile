all : $(patsubst %.ipynb,%.html,$(wildcard *.ipynb))

%.html : %.ipynb
	jupyter nbconvert $< --to html
