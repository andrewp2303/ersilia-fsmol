#!/bin/bash -l
#SBATCH -o multitask_test.sh.log-05-03-support-08
#SBATCH -c 20
#SBATCH --gres=gpu:volta:1

module unload anaconda
module load anaconda/2023a-pytorch

python multitask_test.py ~/Ersilia-FS/weights/multitask_best_model.pt ~/Ersilia-FS/dataset/min_size_04 --train-sizes [4] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_Multitask_2024-05-03-support-04