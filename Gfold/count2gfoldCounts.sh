#!/bin/bash

awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/K23/abundance.tsv > K23_cnt
awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/K32/abundance.tsv > K32_cnt
awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/U13/abundance.tsv > U13_cnt
awk '{print $1 "\t" $1 "\t" $4 "\t" $2 "\t" $5 }' ../Counts/U32/abundance.tsv > U32_cnt

