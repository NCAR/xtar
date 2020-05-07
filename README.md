# xtar
Reading  netCDF tar archives with xarray/zarr 


How to start with xtar on your HPC system

log on to HPC system
clone this repository and create the enviroment

conda env create -f environment.yml

Install also libfuse in the above conda enviroment.

conda activate xtar-dev
conda install libfuse

Get full path to the ratarmount in your conda enviroment

which ratarmount
/home1/datahome/todaka/conda-env/xtar-dev/bin/ratarmount

go to jupyter-hub website on the HPC center 
open notebook from xtar/notebooks/

Use the full path of ratarmount in your enviroment


