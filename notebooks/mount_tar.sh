#!/bin/bash
cd /home1/datahome/todaka/git/xtar/notebooks
for i in ` qstat -u todaka -n -1 | grep jupyter | awk '{print $NF}' | awk -F/ '{print $1}'`  ; do
echo ${i}
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; /home1/datahome/todaka/conda-env/xtar-dev/bin/ratarmount --recreate-index data/realdata.tar mounted_dataset '
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; /home1/datahome/todaka/conda-env/xtar-dev/bin/ratarmount --recreate-index data_gpfs/realdata.tar data_gpfs/mounted_dataset '
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; /home1/datahome/todaka/conda-env/xtar-dev/bin/ratarmount --recreate-index data_lustre/realdata.tar data_lustre/mounted_dataset '
done


