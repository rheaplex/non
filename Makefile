all: non.pdf non.png

non.pdf: non.md
	pandoc --pdf-engine=xelatex -o non.pdf non.md

non.png: non.pdf
	pdftoppm -png -singlefile -aa yes -aaVector yes -r 600 non.pdf > non.png
