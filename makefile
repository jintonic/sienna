DAT=$(wildcard *.sc)
TXT=$(DAT:.sc=.txt)
PDF=oil.pdf fuel.pdf
PNG=pie.png

.PHONY: all clean

all: $(PGN) $(PDF)

%.png: %.R %.dat
	Rscript $<

pie.dat: $(TXT)
	tail -q -n 1 $^ | awk '{print $$NF}' > $@

%.pdf:%.txt
	gnuplot $*.gnu

%.txt: %.sc
	sc -W % $< 1> $@ 2> /dev/null

clean:
	rm -f `cat .gitignore`
