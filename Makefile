NAME=cto-framework-book

pdf: clean prepare
	lualatex -interaction nonstopmode -halt-on-error -jobname=$(NAME) $(NAME).tex
	bibtex $(NAME).aux
	makeindex $(NAME).idx
	lualatex -interaction nonstopmode -halt-on-error -jobname=$(NAME) $(NAME).tex
	lualatex -interaction nonstopmode -halt-on-error -jobname=$(NAME) $(NAME).tex

open:
	xdg-open $(NAME).pdf

clean:
	rm -f *.pdf git-info.tex

prepare: git-info.tex

git-info.tex:
	sed "s/__GIT_TAG__/$(shell git describe --tags)/" git-info.TEMPLATE.tex > git-info.tex
	cat git-info.tex
