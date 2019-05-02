#!/bin/bash
#SBATCH --job-name=vsearch
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 36
#SBATCH --mem=120G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# Combind the assembled fasta files

module load trinity/2.6.6

Trinity --seqType fq \
	--left ../Quality_Control/trim_U13_R1.fastq \
	--right ../Quality_Control/trim_U13_R2.fastq \
	--min_contig_length 300 \
	--CPU 36 \
	--max_memory 120G \
	--output trinity_U13 \
	--full_cleanup 

Trinity --seqType fq \
	--left ../Quality_Control/trim_U32_R1.fastq \
	--right ../Quality_Control/trim_U32_R2.fastq \
	--min_contig_length 300 \
	--CPU 36 \
	--max_memory 120G \
	--output trinity_U32 \
	--full_cleanup  

Trinity --seqType fq \
	--left ../Quality_Control/trim_K32_R1.fastq \
	--right ../Quality_Control/trim_K32_R2.fastq \
	--min_contig_length 300 \
	--CPU 36 \
	--max_memory 120G \
	--output trinity_K32 \
	--full_cleanup 

date 


