#!/bin/bash -l
#SBATCH -o rf_test.sh.log-%j-%a
#SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python baseline_test.py ~/Ersilia-FS/dataset --model randomForest