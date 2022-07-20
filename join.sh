#!/bin/bash

FILE=./data/vocab.clean
CORPUS=./data/corpus.clean

while read line
do
    word=$(echo "$line" | cut -f1)
    example=$(grep -m1 "${word}" ${CORPUS})
    echo -e "$line"'\t'"$example"
done < ${FILE}

