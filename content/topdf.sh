#!/bin/bash
dir="tmp"
mkdir $dir
i=10
while read p; do
  wkhtmltopdf "http://localhost:1313/$p" "$dir/$i-$p.pdf"
  let "i+=1"
done <liste.xtxt
pdfunite $dir/* merged.pdf
rm -rf $dir