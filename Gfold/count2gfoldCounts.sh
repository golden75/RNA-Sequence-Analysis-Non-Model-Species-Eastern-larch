#!/bin/bash

awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/K23/abundance.tsv > K23.read_cnt
awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/K32/abundance.tsv > K32.read_cnt

