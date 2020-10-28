#!/bin/bash
#SBATCH -J tensorD            # job name
#SBATCH -e matlabjob.%j.err       # error file name 
#SBATCH -o matlabjob.%j.out       # output file name 
#SBATCH -N 4                      # request 1 node
#SBATCH -n 16                   # request all 16 cores
#SBATCH -p development
#SBATCH -t 02:00:00


module load matlab
matlab -nodesktop -nodisplay -nosplash < runAll.m