TEX=pdflatex
CROP=pdfcrop
CONV=convert
CONVARGS = -density 200 -quality 100

all: clv.png

clv.png: clv-crop.pdf
	$(CONV) $(CONVARGS) $+ $@

clv-crop.pdf: clv.pdf
	$(CROP) $+

clv.pdf: clv.tex
	$(TEX) $+ -o $@

clean:
	rm clv.pdf clv-crop.pdf clv.png clv.aux clv.log
