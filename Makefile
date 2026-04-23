NAME=cto-framework-book
ENGINE=lualatex
FLAGS=-interaction=nonstopmode -halt-on-error

.PHONY: all pdf open clean prepare

all: pdf

pdf: prepare
	$(ENGINE) $(FLAGS) -jobname=$(NAME) $(NAME).tex
	biber $(NAME)
	makeindex $(NAME).idx
	makeglossaries $(NAME)
	$(ENGINE) $(FLAGS) -jobname=$(NAME) $(NAME).tex
	$(ENGINE) $(FLAGS) -jobname=$(NAME) $(NAME).tex

open:
	xdg-open $(NAME).pdf

clean:
	@echo "Cleaning auxiliary files..."
	@rm -f *.aux *.log *.toc *.out *.idx *.glo *.ist *.acn *.acr *.alg *.bbl *.blg *.ind *.ilg *.gls* *.glo* *.glg* *.run.xml *.bcf
	@rm -f git-info.tex
	@rm -f $(NAME).pdf

prepare: git-info.tex

git-info.tex: git-info.TEMPLATE.tex
	@echo "Generating git-info.tex..."
	@sed "s/__GIT_TAG__/$(shell git describe --tags --always)/" git-info.TEMPLATE.tex > git-info.tex
