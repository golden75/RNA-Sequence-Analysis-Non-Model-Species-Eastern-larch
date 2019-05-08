#!/bin/bash
#SBATCH --job-name=Extract_sequence
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=1G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date
##########################################
## Extract Sequences			## 
##########################################
python ExtractSequence.py ../Gfold/K32_vs_K23.diff ../Coding_Regions/trinity_combine.fasta.transdecoder.pep 10


date 


