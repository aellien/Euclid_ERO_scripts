#!/bin/bash
for file in Euclid-NISP-H-ERO-Abell2390-LSB.DR3.crop.fits Euclid-NISP-J-ERO-Abell2390-LSB.DR3.crop.fits Euclid-NISP-Y-ERO-Abell2390-LSB.DR3.crop.fits
do
      echo "Launch Dawis on file $file"
      band=${file:12:1}
      #qsub qsub_dawis_ERO.sh -v n=${file},ncl=A2390,band=${file:12:1} #${file:0:-5}
      bash slurm_dawis.sh $file

done