#!/bin/bash
#
#SBATCH --job-name=f814w
#SBATCH -p short-40core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=04:00:00

filter=F814W
name="J2325-5229"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

if [[ "$filter" == "F160W" ]]; then
    input_filter="ir"
else
    input_filter="uvis"
fi

# define the input and output notebook paths
input_notebook="${input_filter}_model.ipynb"
output_notebook="cutout_data/${name}/${filter}/model_${filter}.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/${filter}/${name}.yaml"