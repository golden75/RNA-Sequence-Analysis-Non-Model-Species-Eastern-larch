#!/bin/bash
#SBATCH --job-name=kallisto_counts
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
##SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date
##########################################
## Creating an Index			##	
##########################################
module load kallisto/0.44.0

kallisto index -i Eastern_larch_index ../Clustering/centroids.fasta


date 


