DAT=$(wildcard *.sc)
TXT=$(DAT:.sc=.txt)

all: pie.pdf

pie.pdf: pie.R pie.dat
	Rscript $<

%.txt: %.sc
	sc -W % $< 1> $@ 2> /dev/null

pie.dat: $(TXT)
	tail -q -n 1 $^ | awk '{print $$NF}' > pie.dat

clean:
	rm -f *.txt *.pdf *.dat
