#!/bin/bash -l
#SBATCH -o rf_test.sh.log-05-03-support-04
#SBATCH -c 2

module unload anaconda
module load anaconda/2023a

python baseline_test.py ~/Ersilia-FS/dataset/min_size_04 --num-runs 5 --train-sizes [4] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_randomForest_2024-05-03-support-04 --model 'randomForest' --num-splits 2