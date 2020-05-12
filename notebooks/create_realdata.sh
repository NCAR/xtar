#!/bin/bash
rm -rf data 
mkdir -p data/realdata
cp  /home/ref-oc-public/modeles_marc/f1_e4000/best_estimate/2014/MARC_F1-MARS3D-MANGAE4000_2014*T2300Z.nc data/realdata/.
tar Pcf data/realdata.tar data/realdata/*
#prepare test GPFS
rm -rf ${DATAWORK}/xtar data_gpfs
mkdir -p ${DATAWORK}/xtar
ln -sf ${DATAWORK}/xtar data_gpfs
cp -R data/realdata* data_gpfs/.
#prepare test Lustre
rm -rf ${SCRATCH}/xtar data_lustre
mkdir -p ${SCRATCH}/xtar
ln -sf ${SCRATCH}/xtar data_lustre
cp -R data/realdata* data_lustre/.
