#!/usr/bin/env bash

mkdir -p macs2Output
ctrl="SRR945975"

for sample in "SRR945976" "SRR945977"
do
  echo $sample
  mkdir -p macs2Output/${sample}
  macs2 callpeak -t bowtieOutput/${ctrl}/${ctrl}.chr18.bed -c bowtieOutput/${sample}/${sample}.chr18.bed -g hs -n SOX2.${sample}.chr18 --outdir macs2Output/${sample} 2> macs2Output/${sample}/${sample}.log
done