#!/usr/bin/bash

FILE=./data/corpus.raw
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist. Fetching"
    curl -L -k -o ${FILE} https://github.com/ajinkyakulkarni14/TED-Multilingual-Parallel-Corpus/blob/master/Monolingual_data/Chinese,%20Traditional.txt?raw=true    
fi
