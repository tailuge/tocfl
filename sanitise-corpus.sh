#!/usr/bin/bash

FILE=./data/corpus.raw
OUTFILE=./data/corpus.clean

grep -P -e '[\p{Han}]' ${FILE} | grep -P -v '[[:alnum:]]' | sed 's/--$//' | grep -v '\-\-\-' | awk '{ print length, $0 }' | sort -n -s | cut -d" " -f2- | tac | uniq > ${OUTFILE}
