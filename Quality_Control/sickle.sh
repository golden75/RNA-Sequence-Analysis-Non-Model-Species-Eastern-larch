#!/bin/bash
#SBATCH --job-name=sickle
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load sickle/1.33

sickle pe -f ../Raw_Reads/U13/U13_R1.fastq \
	-r ../Raw_Reads/U13/U13_R2.fastq \
	-t sanger \
	-o trim_U13_R1.fastq \
	-p trim_U13_R2.fastq \
	-s singles_U13.fastq \
	-q 30 -l 45

sickle pe -f ../Raw_Reads/U32/U32_R1.fastq \
	-r ../Raw_Reads/U32/U32_R2.fastq \
	-t sanger \
	-o trim_U32_R1.fastq \
	-p trim_U32_R2.fastq \
	-s singles_U32.fastq \
	-q 30 -l 45 

sickle pe -f ../Raw_Reads/K32/K32_R1.fastq \
	-r ../Raw_Reads/K32/K32_R2.fastq \
	-t sanger \
	-o trim_K32_R1.fastq \
	-p trim_K32_R2.fastq \
	-s singles_K32.fastq \
	-q 30 -l 45 

sickle pe -f ../Raw_Reads/K23/K23_R1.fastq \
        -r ../Raw_Reads/K23/K23_R2.fastq \
        -t sanger \
        -o trim_K23_R1.fastq \
        -p trim_K23_R2.fastq \
        -s singles_K23.fastq \
        -q 30 -l 45

date

