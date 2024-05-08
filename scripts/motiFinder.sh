#!/usr/bin/env bash

mkdir -p homerOutput


for file in macs2Output/*/*.narrowPeak
do
  base=$(basename -a -s .chr18_peaks.narrowPeak ${file})
  echo $base
  mkdir -p homerOutput/${base}
  findMotifsGenome.pl $file references/genome.fa homerOutput/${base} -p 8 2> homerOutput/${base}/homer.log
done