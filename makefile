DAT=$(wildcard *.sc)
TXT=$(DAT:.sc=.txt)
PDF=oil.pdf fuel.pdf

.PHONY: all clean

all: pie.png oil.png daily.png $(PDF)

pie.png: pie.R pie.dat
	Rscript $<

oil.png daily.png: oil.R oil.txt
	Rscript $<

pie.dat: $(TXT)
	tail -q -n 1 $^ | awk '{print $$NF}' > $@

%.pdf:%.txt
	gnuplot $*.gnu

%.txt: %.sc
	sc -W % $< 1> $@ 2> /dev/null

clean:
	rm -f `cat .gitignore`
