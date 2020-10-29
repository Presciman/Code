#!/bin/bash
#SBATCH -J matlabjob              # job name
#SBATCH -e matlabjob.%j.err       # error file name 
#SBATCH -o matlabjob.%j.out       # output file name 
#SBATCH -N 1                      # request 1 node
#SBATCH -n 16                     # request all 16 cores 
#SBATCH -t 01:00:00               # designate max run time 
#SBATCH -A myproject              # charge job to myproject 
#SBATCH -p normal           # designate queue
#SBATCH --mail-type=all    # Send email at begin and end of job
#SBATCH --mail-user=sunbaixi@tacc.utexas.edu

module load matlab
matlab -nodesktop -nodisplay -nosplash < mymatlabprog.m