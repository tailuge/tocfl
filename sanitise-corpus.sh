#!/usr/bin/bash

FILE=./data/corpus.raw
OUTFILE=./data/corpus.clean

grep -P -e '[\p{Han}]' ${FILE} | sort | uniq > ${OUTFILE}
