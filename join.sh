#!/bin/bash

FILE=./data/vocab.clean
CORPUS=./data/corpus.clean

while read -r line
do
    word=$(echo "$line" | cut -f1)
    example=$(grep -m1 "${word}" ${CORPUS})
    if [ -n "${example}" ]; then
	echo -e "$line"'\t'"$example"
    fi    
done < ${FILE}

