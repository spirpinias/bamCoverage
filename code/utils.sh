#!/usr/bin/env bash

case $genome_version in

  GRCh37)
    genome_version=2864785220
    ;;

  GRCh38)
    genome_version=2620345972
    ;;

  GRCm37)
    genome_version=2913022398
    ;;

  GRCm38)
    genome_version=2652783500    
    ;;

  dm3)
    genome_version=162367812    
    ;;

  dm6)
    genome_version=142573017    
    ;;

  GRCz10)
    genome_version=1369631918    
    ;;

  WBcel235)
    genome_version=100286401    
    ;;

  TAIR10)
    genome_version=119481543    
    ;;
esac