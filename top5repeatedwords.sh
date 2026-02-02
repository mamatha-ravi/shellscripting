#!/bin/bash
echo "top 5 repeated words in a file"
tr -cs '[:alnum:]' '\n' < file.txt \
| tr 'A-Z' 'a-z' \
| sort \
| uniq -c \
| sort -nr \
| head -5
