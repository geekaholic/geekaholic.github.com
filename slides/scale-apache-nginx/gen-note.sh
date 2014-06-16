#!/bin/bash

# Generate html and pdf notes
MD_FILE=$1
OUT_FILE=$2

if [ "$MD_FILE" == "" ] || [ "$OUT_FILE" == "" ];then
	echo "Usage: $0 <markdown file> <out file>"
	exit 1
fi

cat header.html > $OUT_FILE
upskirt $MD_FILE >> $OUT_FILE
cat footer.html >> $OUT_FILE

exit 0
