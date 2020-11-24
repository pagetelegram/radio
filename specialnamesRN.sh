#!/bin/bash
#specify $1 = extension ie mp4 etc....or * for all files

for f in *.$1; do nf=$(echo "$f" |sed -e 's/[^A-Za-z0-9.-]/./g;s/\.\.\././g;s/\.\././g'); test "$f" != "$nf" && mv "$f" "$nf" && echo "$nf"; done
