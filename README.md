![Alt text](tdcosmo.png)

# Gravitational Lens Modeling of HST Observed Doubly Imaged Quasars

This repository stores the HST data, code, and notebooks for the TDCOSMO doubly imaged quasars project. 

The script ```run_notebook.sh``` can be submitted as a slurm script to model the systems on the SEAWULF supercomputing cluster using either ```uvis_model.ipynb``` or ```ir_model.ipynb```. By default, it allocates for 20 cores of an Intel Xeon E5-2683v3 CPU and a run-time of 4 hours. For cosmological analysis, ```run_cosmo.sh``` submits a job to run ```cosmology.ipynb```, which calculates the Fermat potential and time delay differences with the posteriors generated from the modeling routine. The jobs make use of ```papermill``` to execute the Jupyter notebooks via terminal.