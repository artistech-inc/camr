#!/bin/bash

MODEL=amr-anno-1.0/amr-anno-1.0.train.basic-abt-brown-verb.m

echo "python amr_parsing.py -m preprocess $1"
python amr_parsing.py -m preprocess $1
