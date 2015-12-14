DAT=$(wildcard *.sc)
TXT=$(DAT:.sc=.txt)

.PHONY: all clean

all: pie.pdf fuel.pdf

pie.pdf: pie.R pie.dat
	Rscript $<

pie.dat: $(TXT)
	tail -q -n 1 $^ | awk '{print $$NF}' > $@

fuel.pdf:fuel.txt
	gnuplot fuel.gnu

%.txt: %.sc
	sc -W % $< 1> $@ 2> /dev/null

clean:
	rm `cat .gitignore`
