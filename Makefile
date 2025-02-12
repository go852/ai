MAIN=七年级上册重点
SHELL=bash
LATEXMK=latexmk -xelatex

.PHONY:c d clean distclean

all:$(MAIN).pdf

$(MAIN).pdf:$(MAIN).tex
	$(LATEXMK) $<

clean: 
	@rm -f *.aux
	@rm -f *.fdb*
	@rm -f *.fls
	@rm -f *.gz
	@rm -f *.log
	@rm -f *.nav
	@rm -f *.out
	@rm -f *.snm
	@rm -f *.toc
	@rm -f *.xdv

distclean : clean
	@rm -f *.pdf

c:clean

d:distclean

