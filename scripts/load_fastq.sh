#!/usr/bin/env bash
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR945/SRR945976/SRR945976.fastq.gz -o $1/SRR945976.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR945/SRR945975/SRR945975.fastq.gz -o $1/SRR945975.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR945/SRR945977/SRR945977.fastq.gz -o $1/SRR945977.fastq.gz