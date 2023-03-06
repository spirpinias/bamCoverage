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

# DeepTools 

if [ -z "${1}" ]; then
  num_threads=$(get_cpu_count.py)
else
  num_threads="${1}"
fi

if [ -z $2 ]; then
    bin_size="50"
else
    bin_size="$2"
fi

if [ -z $3 ]; then
    ignore_chrom="chrX"
else
    ignore_chrom="$3"
fi

if [ -z $4 ]; then
    norm_tech="RPKM"
else
    norm_tech="$4"
fi

if [ -z $5 ]; then
    genome_version="GRCh37"
else
    genome_version="$5"
fi
