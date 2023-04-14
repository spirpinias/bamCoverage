#!/usr/bin/env bash

set -ex

source ./config.sh
source ./utils.sh

if [ "$bam_count" -gt 0 ];
then
    echo "Using $num_threads Available Threads"
    for bam in ${bamfiles}; 
    do  
        filename=$(basename -a $bam)
        prefix=$(get_read_prefix.py "$filename" "0")
        echo "PREFIX: $prefix"
    
        # deepTools BamCoverage \
        bamCoverage \
        ${mnase} \
        ${offset} \
        ${filter_RNA_strand} \
        ${region} \
        --numberOfProcessors "$num_threads" \
        --effectiveGenomeSize ${genome_version} \
        ${bin_size} \
        ${norm_tech} \
        ${ignore_chrom} \
        -b $bam \
        -o ../results/${prefix}.bw 
    done
else
    echo "No bam files were found."
fi
