#!/bin/bash
#
#SBATCH --job-name=job
#SBATCH -p a100
#SBATCH --gpus=1
#SBATCH --time=03:00:00

filter=F814W
name="J1442+4055"
cutout_data=/gpfs/scratch/usr/hst_doubles/cutout_data

source activate env # if necessary, activate a conda env

cd ${cutout_data}/${name}/${filter} 

# define the input and output notebook paths
input_notebook="model_${filter}.ipynb"
output_notebook="model_${filter}.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook"
