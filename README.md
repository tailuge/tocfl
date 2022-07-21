# TOCFL

Useful scripts for [TOCFL](https://www.tw.org/tocfl/) vocabulary study.

An input set of vocabulary is joined with matching sentence from chinese language corpus to provide contextual aid to learning. Links to translations and Anki study deck is generated.

Currently aimed at TOCFL level 5&6 vocab.


# Data

```
./fetch-vocab.sh
./fetch-corpus.sh

```

# Sanitise

```
./sanitise-vocab.sh
./sanitise-corpus.sh
```

# Combine

Combines the vocab with corpus into tab seperated format for Anki study deck import. 
```
./join.sh | sort -R > Tocfl-L5L6-anki.txt
```

# Sources

Data used in these scripts comes from

* https://www.tw.org/tocfl/
* https://www.rulinmandarin.com/
* https://github.com/ajinkyakulkarni14/TED-Multilingual-Parallel-Corpus/

