#!/bin/bash
cd /home1/datahome/todaka/git/xtar/notebooks
for i in ` qstat -u todaka -n -1 | grep jupyter | awk '{print $NF}' | awk -F/ '{print $1}'`  ; do
echo ${i}
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; fusermount -u mounted_dataset '
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; fusermount -u data_gpfs/mounted_dataset '
ssh ${i} ' cd /home1/datahome/todaka/git/xtar/notebooks; fusermount -u data_lustre/mounted_dataset '
done


