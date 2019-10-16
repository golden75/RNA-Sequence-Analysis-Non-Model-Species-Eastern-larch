#!/bin/bash

awk '{print $1 "\t" $4}' ../Counts/K23/abundance.tsv > K23.counts
awk '{print $1 "\t" $4}' ../Counts/K32/abundance.tsv > K32.counts


