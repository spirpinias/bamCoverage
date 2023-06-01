#!/usr/bin/env bash

set -ex

source ./config.sh
source ./utils.sh

if [ "$bam_count" -gt 0 ];
then

    echo "Number of Processors : $num_threads"
    echo "Number of Bam Files : $bam_count" 
    echo "Number of Black List Files : $black_list_count"

    for bam in ${bamfiles}; do  
    
        prefix=$(basename -s .bam $bam)
        echo "PREFIX: $prefix"
    
        # deepTools BamCoverage \
        bamCoverage \
        ${mnase} \
        ${offset} \
        ${filter_RNA_strand} \
        ${region} \
        ${black_list} \
        ${exact_scaling} \
        ${skip_non_cover} \
        ${smooth_len} \
        ${extend_reads} \
        ${ignore_dups} \
        ${center_reads} \
        ${sam_field_include} \
        ${sam_field_exclude} \
        ${bin_size} \
        ${norm_tech} \
        ${ignore_chrom} \
        --numberOfProcessors "$num_threads" \
        --effectiveGenomeSize ${genome_version} \
        -b $bam \
        -o ../results/${prefix}.bw 
    done
else
    echo "No bam files were found."
fi
