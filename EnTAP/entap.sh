#!/bin/bash
#SBATCH --job-name=entap
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 16
#SBATCH --mem=50G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date
##########################################
## EnTap				## 
##########################################
module load anaconda/2.4.0
module load perl/5.24.0
module load diamond/0.9.19
module load eggnog-mapper/0.99.1
module load interproscan/5.25-64.0

/labs/Wegrzyn/EnTAP/EnTAP --runP -i ExtractedSq.fasta -d /isg/shared/databases/Diamond/RefSeq/plant.protein.faa.92.dmnd -d /isg/shared/databases/Diamond/Uniprot/uniprot_sprot.dmnd --ontology 0  --threads 16 



date 


