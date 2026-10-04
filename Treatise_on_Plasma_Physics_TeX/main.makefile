ALL_FIGURE_NAMES=$(shell cat main.figlist)
ALL_FIGURES=$(ALL_FIGURE_NAMES:%=%.pdf)

allimages: $(ALL_FIGURES)
	@echo All images exist now. Use make -B to re-generate them.

FORCEREMAKE:

-include $(ALL_FIGURE_NAMES:%=%.dep)

%.dep:
	mkdir -p "$(dir $@)"
	touch "$@" # will be filled later.

tikzcache/main-figure0.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure0" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure0.pdf: tikzcache/main-figure0.md5
tikzcache/main-figure1.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure1" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure1.pdf: tikzcache/main-figure1.md5
tikzcache/main-figure2.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure2" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure2.pdf: tikzcache/main-figure2.md5
tikzcache/main-figure3.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure3" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure3.pdf: tikzcache/main-figure3.md5
tikzcache/main-figure4.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure4" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure4.pdf: tikzcache/main-figure4.md5
tikzcache/main-figure5.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure5" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure5.pdf: tikzcache/main-figure5.md5
tikzcache/main-figure6.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure6" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure6.pdf: tikzcache/main-figure6.md5
tikzcache/main-figure7.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure7" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure7.pdf: tikzcache/main-figure7.md5
tikzcache/main-figure8.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "tikzcache/main-figure8" "\def\tikzexternalrealjob{main}\input{main}"

tikzcache/main-figure8.pdf: tikzcache/main-figure8.md5
