![Alt text](tdcosmo.png)

# Gravitational Lens Modeling of HST Observed Doubly Imaged Quasars

This repository stores the HST data, code, and notebooks for the TDCOSMO doubly imaged quasars project. 

The script ```run_notebook.sh``` can be used as a slurm script to submit on the SEAWULF supercomputing cluster. By default, it allocates for one NVIDIA A100 GPU and a run-time of 3 hours. The job makes use of ```papermill``` to execute the Jupyter notebooks via terminal.