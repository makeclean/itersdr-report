#!/bin/bash

rm -rf *.aux
rm -rf *.bbl
rm -rf *.blg
rm -rf *.toc

pdflatex report.tex ; bibtex report.aux ; pdflatex report.tex ; pdflatex report.tex

