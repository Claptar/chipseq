#!/bin/bash
### Run QC
fastqc -o qc -t 8 fastq_files/*.fastq.gz

### Run MultiQC
multiqc qc --outdir qc --filename multiqc.html --title "Read quality" --force --no-data-dir