TEX=latex
CONV=dvipng
CONVARGS = -D 600

all: pmatrix.png

pmatrix.png: pmatrix.dvi
	$(CONV) $(CONVARGS) $+ -o $@

pmatrix.dvi: pmatrix.tex
	$(TEX) $+

clean:
	rm pmatrix.log pmatrix.aux pmatrix.dvi pmatrix.png
