#!/bin/bash

#SBATCH --mem-per-cpu=100M -t 00:01:00

awk 'NR == 1 {line = $0; min = $2}
     NR > 1 && $2 < min {line = $0; min = $2}
     END{print line}' $1.*.nrg

