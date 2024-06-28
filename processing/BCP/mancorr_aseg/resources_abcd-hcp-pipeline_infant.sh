#!/bin/bash -l
#SBATCH -J mancorr
#SBATCH --mem=150gb
#SBATCH --tmp=300gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lmoore@umn.edu
#SBATCH -o output_logs/abcd-hcp-pipeline_infant_%A_%a.out
#SBATCH -e output_logs/abcd-hcp-pipeline_infant_%A_%a.err
#SBATCH -A faird
#SBATCH --time=24:00:00
#SBATCH --ntasks=12

#SBATCH -p msilarge,msismall,msibigmem

cd run_files.abcd-hcp-pipeline_infant

module load singularity

file=run${SLURM_ARRAY_TASK_ID}

bash ${file}
