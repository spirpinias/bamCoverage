#!/usr/bin/env bash

source /opt/conda/etc/profile.d/conda.sh

conda activate base

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
  echo "args:"
  for i in $*; do 
    echo $i 
  done
  echo ""
fi

# Extracting Alignment Files.
bamfiles=$(find -L ../data -name "*.bam")
bam_count=$(echo $bamfiles | wc -w)


# DeepTools 
if [ -z "${1}" ]; then
  num_threads=$(get_cpu_count.py)
else
  num_threads="${1}"
fi

if [ -z $2 ]; then
    bin_size=""
else
    bin_size="--binSize $2"
fi

if [ -z $3 ]; then
    ignore_chrom=""
else
    ignore_chrom="--ignoreForNormalization $3"
fi

if [ -z $4 ]; then
    norm_tech=""
else
    norm_tech="--normalizeUsing $4"
fi

if [ -z $5 ]; then
    genome_version="GRCh37"
else
    genome_version="$5"
fi