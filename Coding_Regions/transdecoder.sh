#!/bin/bash
#SBATCH --job-name=transdecoder
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 48
#SBATCH --mem=100G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load hmmer/3.2.1
module load TransDecoder/5.3.0

TransDecoder.LongOrfs -t ../Clustering/centroids.fasta

echo " == End of TransDecoder.LongOrfs == "
date

hmmscan --cpu 32 \
       --domtblout pfam.domtblout \
       /isg/shared/databases/Pfam/Pfam-A.hmm \
       centroids.fasta.transdecoder_dir/longest_orfs.pep 

echo " == End of hmmscan == "
date

TransDecoder.Predict -t ../Clustering/centroids.fasta \
	--retain_pfam_hits pfam.domtblout \
	--cpu 32 

echo " == End of TransDecoder.Predict == "
date


