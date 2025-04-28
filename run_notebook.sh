#!/bin/bash
#
#SBATCH --job-name=job
#SBATCH -p a100
#SBATCH --gpus=1
#SBATCH --time=03:00:00

filter=F814W
name="J1442+4055"

source activate env # if necessary, activate a conda env

# define the input and output notebook paths
input_notebook="uvis_model.ipynb"
output_notebook="cutout_data/${name}/${filter}/model_${filter}.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/${filter}/${name}.yaml"
