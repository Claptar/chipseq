#!/usr/bin/env bash

# make directories for quantified samples
mkdir -p bowtieOutput

# bowtie alignment
for infile in fastq_files/*.fastq.gz
do
  base=$(basename -a -s .fastq.gz ${infile})
  mkdir -p bowtieOutput/${base}
  bowtie2 --no-unal --threads 16 -x references/bowtieIndex/humanIndex -U $infile -S bowtieOutput/${base}/${base}.sam
done