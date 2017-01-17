# CAMR: A transition-based AMR Parser

This is a customized fork with wrapper scripts of the camr parser.  
This wrapped fork is for the yellow-pipeline.

# Install

## First download the projects and run configs

```sh      
git clone https://github.com/artistech-inc/camr.git
git clone https://github.com/artistech-inc/jamr.git

cd jamr
./setup
cd ../camr
./scripts/config.sh
```

## Manual Configuration

Edit `camr/scripts/jamr_align.sh` to set `JAMR_HOME` to the proper location.

## Models
Download the following model:

[LDC2014T12](http://www.cs.brandeis.edu/~cwang24/files/amr-anno-1.0.train.m.tar.gz): trained on training set of LDC2014T12.

```sh
cd camr
wget http://www.cs.brandeis.edu/~cwang24/files/amr-anno-1.0.train.m.tar.gz
tar xzf amr-anno-1.0.train.m.tar.gz
```

# Parse a file

```sh
./camr-pipeline.sh <INPUT_TEST_FILE>
```

This will generate <INPUT_TEST_FILE>.all.basic-abt-brown-verb.parsed.amr.tok.aligned
