#!/bin/bash -l
#SBATCH -o multitask_test.sh.log
#SBATCH -c 20
#SBATCH --gres=gpu:volta:1

module unload anaconda
module load anaconda/2023a-pytorch

python multitask_test.py ~/Ersilia-FS/fs_mol/outputs/train/FSMol_Multitask_2024-05-29-support-08/best_model.pt ~/Ersilia-FS/dataset/min_size_08 --train-sizes [8] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_Multitask_on_fine_tuned-support-08