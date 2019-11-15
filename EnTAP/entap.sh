#!/bin/bash
#SBATCH --job-name=entap
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=50G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date
##########################################
## EnTap				## 
##########################################
module load EnTAP/0.9.0-beta
module load diamond/0.9.19


EnTAP --runP -i ../ExtractedSq.fasta -d /isg/shared/databases/Diamond/RefSeq/plant.protein.faa.92.dmnd -d /isg/shared/databases/Diamond/Uniprot/uniprot_sprot.dmnd --ontology 0  --threads 8



date 


