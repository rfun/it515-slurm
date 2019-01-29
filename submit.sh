#!/bin/bash

OUTPUT=$(sbatch -a 1-10 energize.sh)

echo $OUTPUT

JOBID=$(echo $OUTPUT | cut -d" " -f4- )

#echo "JOBID $JOBID"

RUN2=$(sbatch -d afterok:$JOBID analyze.sh $JOBID)

echo $RUN2
