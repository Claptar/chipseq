#!/usr/bin/env bash

for infile in bowtieOutput/*/*.sam
do
  base=$(basename -a -s .sam ${infile})
  sam2bed --max-mem 4G < $infile > bowtieOutput/${base}/${base}.bed
done