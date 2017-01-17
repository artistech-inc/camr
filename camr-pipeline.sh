#!/bin/bash

MODEL=amr-anno-1.0/amr-anno-1.0.train.basic-abt-brown-verb.m

python amr_parsing.py -m preprocess $1
python amr_parsing.py -m parse --model $MODEL $1
python amr_parsing.py -m preprocess --amrfmt amr $1.all.basic-abt-brown-verb.parsed
./scripts/jamr_align.sh $1.all.basic-abt-brown-verb.parsed.amr.tok
