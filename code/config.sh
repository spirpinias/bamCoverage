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
bamfiles=$(find -L ../data/Alignment -name "*.bam")
bam_count=$(echo $bamfiles | wc -w)

# DeepTools 

if [ -z "${1}" ]; then
  num_threads=$(cat /proc/cpuinfo | grep processor | wc -l)
else
  num_threads="${1}"
fi

if [ -z "${2}" ]; then
    bin_size=""
else
    bin_size="--binSize ${2}"
fi

if [ -z "${3}" ]; then
    ignore_chrom=""
else
    ignore_chrom="--ignoreForNormalization ${3}"
fi

if [ -z "${4}" ]; then
    norm_tech=""
else
    norm_tech="--normalizeUsing ${4}"
fi

if [ -z "${5}" ]; then
    genome_version="GRCh37"
else
    genome_version="${5}"
fi

if [ "${6}" = "True" ]; then
    mnase="--MNase"
else
    mnase=""
fi

if [ -z "${7}" ]; then
    offset=""
else
    offset="--Offset ${7}"
fi

if [ "${8}" = "forward" ]; then
    filter_RNA_strand="--filterRNAstrand forward"

elif [ "${8}" = "reverse" ]; then
    filter_RNA_strand="--filterRNAstrand reverse"
else
    filter_RNA_strand=""
fi

if [ -z "${9}" ]; then
    region=""
else
    region="--region ${9}"
fi

if [ "${10}" == "True" ]; then
    black_list_count=0
else
    # Extract Blacklist Files.
    black_list_file=$(find -L ../data/Blacklist -name "*.bed")
    black_list_count=$(echo ${black_list_file} | wc -w)
    if [ "$black_list_count" -eq 1 ];
    then
      black_list="--blackListFileName ${black_list_file}"
    else
      echo "Only 1 blacklist (.bed) is permitted."
    fi
fi

if [ "${11}" = "True" ]; then
    exact_scaling="--exactScaling"
else
    exact_scaling=""
fi

if [ "${12}" = "True" ]; then
    skip_non_cover="--skipNonCoveredRegions"
else
    skip_non_cover=""
fi

if [ -z "${13}" ]; then
    smooth_len=""
else
    smooth_len="--smoothLength ${13}"
fi

if [ -z "${14}" ]; then
    extend_reads=""
else
    extend_reads="--extendReads ${14}"
fi

if [ "${15}" = "True" ]; then
    ignore_dups="--ignoreDuplicates"
else
    ignore_dups=""
fi
 
if [ "${16}" = "True" ]; then
    center_reads="--centerReads"
else
    center_reads=""
fi

if [ -z "${17}" ]; then
    sam_field_include=""
else
    sam_field_include="--samFlagInclude ${17}"
fi

if [ -z "${18}" ]; then
    sam_field_exclude=""
else
    sam_field_exclude="--samFlagExclude ${18}"
fi