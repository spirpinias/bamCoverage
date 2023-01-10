#!/usr/bin/env bash

set -ex

source ./config.sh
source ./utils.sh

bam_count=$(find -L ../data -name "*.bam" | wc -l)
bamfile=$(find -L ../data -name "*.bam")

if [ "$bam_count" -gt 0 ];
then
    echo "Using $num_threads Available Threads"
    for bam in ${bamfile}; 
    do  
        filename=$(basename -a $bam)
        prefix=$(get_read_prefix.py "$filename" "0")
        echo "PREFIX: $prefix"
    
        # deepTools BamCoverage \
        bamCoverage \
        -b $bam -o ../results/${prefix}.bw \
        --binSize "$bin_size" \
        --normalizeUsing "$norm_tech" \
        --effectiveGenomeSize "$genome_version" \
        --ignoreForNormalization "$ignore_chrom" \
        --numberOfProcessors "$num_threads" 
    done
else
    echo "No bam files were found."
fi
