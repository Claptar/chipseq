#!/usr/bin/env bash

for infile in bowtieOutput/*/*.bed
do
  base=$(basename -a -s .bed ${infile})
  grep $1 $infile > bowtieOutput/${base}/${base}.chr${1}.bed
done