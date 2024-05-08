#!/bin/bash
# скачаем референс с ENSEMBL
wget https://ftp.ensembl.org/pub/release-111/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
gzip -d Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
mv Homo_sapiens.GRCh38.dna.primary_assembly.fa references/genome.fa

# скачаем аннотацию
wget https://ftp.ensembl.org/pub/release-111/gtf/homo_sapiens/Homo_sapiens.GRCh38.111.gtf.gz
gzip -d Homo_sapiens.GRCh38.111.gtf.gz
mv Homo_sapiens.GRCh38.111.gtf references/genome.gtf