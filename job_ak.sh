#!/bin/sh
#SBATCH --job-name=cellranger_count_ak        # Job name
#SBATCH --cpus-per-task=40         # Run on a single CPU
#SBATCH --mem=256gb                 # Job memory request
#SBATCH --time=15:00:00           # Time limit hrs:min:sec
#SBATCH -o logs/02_Cellranger_count_ak.log  # Standard output file
#SBATCH -e logs/02_Cellranger_count_ak.err  # Standard error file
#SBATCH --partition=medium         # Task priority
#SBATCH --constraint=compute      # Node type 

cd /home/opiskunova/run_cellranger_count/ak

/home/opiskunova/software/cellranger-9.0.1/bin/cellranger count --id=run_count_ak \
   --create-bam=false \
   --fastqs=/home/opiskunova/data/ak_fastqs \
   --transcriptome=/home/opiskunova/software/refdata-gex-GRCh38-2024-A

