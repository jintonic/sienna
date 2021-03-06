# Sort output of wildcard as suggested on
# https://stackoverflow.com/questions/40558385/gnu-make-wildcard-no-longer-gives-sorted-output-is-there-any-control-switch
DAT=$(sort $(wildcard *.sc))
TXT=$(DAT:.sc=.txt)
PDF=cost.pdf mileage.pdf oil.pdf fuel.pdf

.PHONY: clean

sienna.pdf: $(PDF)
	gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile=$@ $^
	rm -f $^ *~

cost.pdf: cost.R cost.dat
	Rscript $<

mileage.pdf: oil.R oil.txt
	Rscript $<

%.pdf:%.txt
	gnuplot $*.gnu

%.txt: %.sc
	sc -W % $< 1> $@ 2> /dev/null

cost.dat: $(TXT)
	tail -q -n 1 $^ | awk '{print $$NF}' > $@

clean:
	rm -f `cat .gitignore`
