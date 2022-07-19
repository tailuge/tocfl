#!/usr/bin/bash

FILE=./data/vocab.raw
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist. Fetching"
    links -dump https://www.rulinmandarin.com/tocfl-level-5-and-level-6-vocabulary-word-list/ > ${FILE}    
fi
