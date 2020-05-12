#!/bin/bash
cd /home1/datahome/todaka/git/xtar/notebooks
for i in ` qstat -u todaka -n -1 | grep jupyter | awk '{print $NF}' | awk -F/ '{print $1}'`  ; do
echo ${i} 'NFS'
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; ls mounted_dataset/data/realdata/*.nc |wc -l '
echo ${i} 'gpfs'
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; ls data_gpfs/mounted_dataset/data/realdata/*.nc |wc -l '
echo ${i} 'lustre'
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; ls data_lustre/mounted_dataset/data/realdata/*.nc |wc -l '
done


