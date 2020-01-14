#!/bin/bash
 
#SBATCH --partition=batch
#SBATCH --job-name="notebook"
#SBATCH --output=job.notebook.%j
 
#SBATCH --nodes=1
 
 
## 30 mintues
#SBATCH --time=30
 
module load python3/2019.x
 
echo "URL to CONNECT for JOB $SLURM_JOB_ID is http://$(host $(hostname) | awk 'NF>1{print $NF}')"
 
jupyter notebook --ip="*" --no-browser