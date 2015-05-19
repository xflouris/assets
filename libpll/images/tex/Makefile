TEX=pdflatex
CROP=pdfcrop
CONV=convert
CONVARGS = -density 200 -quality 100

TEXFILES = $(shell find . -maxdepth 1 -type f -name '*.tex')                                                           
PNGFILES = $(patsubst %.tex, %.png, $(TEXFILES)) 

all: $(PNGFILES)

%.png: %-crop.pdf
	$(CONV) $(CONVARGS) $+ $@

%-crop.pdf: %.pdf
	$(CROP) $+

%.pdf: %.tex
	$(TEX) $+ -o $@

clean:
	rm clv.pdf clv-crop.pdf clv.png clv.aux clv.log
