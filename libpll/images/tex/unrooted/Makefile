TEX=pdflatex
CROP=pdfcrop
CONV=convert
CONVARGS = -density 200 -quality 100
FILE=unrooted

all: $(FILE).png

$(FILE).png: $(FILE)-crop.pdf
	$(CONV) $(CONVARGS) $+ $@

$(FILE)-crop.pdf: $(FILE).pdf
	$(CROP) $+

$(FILE).pdf: $(FILE).tex
	$(TEX) $+ -o $@

clean:
	rm $(FILE).pdf $(FILE)-crop.pdf $(FILE).png $(FILE).aux $(FILE).log
