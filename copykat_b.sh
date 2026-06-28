#!/bin/sh

#SBATCH --job-name=b_copykat        # Job name
#SBATCH --cpus-per-task=40         # Run on a single CPU
#SBATCH --mem=32gb                 # Job memory request
#SBATCH --time=9:30:00           # Time limit hrs:min:sec
#SBATCH --output=JobName.%j.log   # Standard output and error log
#SBATCH --partition=medium
#SBATCH --output=/home/opiskunova/THESIS/copykat_b.logs


/home/opiskunova/.conda/envs/r_env2/bin/Rscript copykat_b.r
