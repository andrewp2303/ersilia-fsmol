#!/bin/bash -l
#SBATCH -o rf_test.sh.log-%j-%a
#SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python baseline_test.py ~/Ersilia-FS/dataset/min_size/04 --model randomForest --num_runs 1 --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_ProtoNet_2024-05-03-support-04