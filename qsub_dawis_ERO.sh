#!/bin/bash
#PBS -o /home/ellien/Euclid_ERO/logs/icl_ERO_${ncl}_${band}.out
#PBS -j oe
#PBS -N icl_Euclid_ERO
#PBS -l nodes=1:ppn=4,walltime=47:59:00
#PSB -S /bin/bash

#module load intelpython/3-2020.4
conda init bash
source /home/ellien/.bashrc
conda activate dawis

echo ${n}
echo ${band}
python -W"ignore" /home/ellien/Euclid_ERO/Euclid_ERO_scripts/dawis_ERO.py ${n}

exit 0
