#!/usr/bin/bash

FILE=./data/vocab.raw
OUTFILE=./data/vocab.clean

grep -P -e '[\p{Han}]' ${FILE} | sort | uniq | tr -s ' ' | cut -c2- | grep -v '[\p{Han}]* [^ ]* .*[āáǎàēéěèīíǐìōóǒòūúǔùüǘǚǜ]' | grep -v / | sed 's/ /\t/' |  sed 's/ /\t/' > ${OUTFILE}
