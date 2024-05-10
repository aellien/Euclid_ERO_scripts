#!/bin/bash
#SBATCH --job-name=synth_Euclid_ERO
#SBATCH --nodelist=n07
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH --output /n03data/ellien/Euclid_ERO/logs/%x.%j.out 
#SBATCH --error  /n03data/ellien/Euclid_ERO/logs/%x.%j.err

source /home/ellien/.bashrc
conda activate dawis
ray start --head --port=6379 & #--block --verbose  &
echo 'BONJOUR BONJOUR BONJOUR BONJOUR'
python -u -W"ignore" /home/ellien/Euclid_ERO/Euclid_ERO_scripts/make_results_ERO.py
exit 0