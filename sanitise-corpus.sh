#!/usr/bin/bash

FILE=./data/corpus.raw
OUTFILE=./data/corpus.clean

grep -P -e '[\p{Han}]' ${FILE} | grep -P -v '[[:alnum:]]' | sed 's/--$//' | grep -v '\-\-\-' | sort | uniq > ${OUTFILE}
