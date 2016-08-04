#!/bin/bash

rm -rf *.aux
rm -rf *.bbl
rm -rf *.blg
rm -rf *.toc

pdflatex addendum.tex ; bibtex addendum.aux ; pdflatex addendum.tex ; pdflatex addendum.tex

