#!/bin/bash -l
#SBATCH -o multitask_train.sh.log-05-29-support-08
#SBATCH -c 20
#SBATCH --gres=gpu:volta:1

module unload anaconda
module load anaconda/2023a-pytorch

python multitask_train.py ~/Ersilia-FS/dataset/min_size_08 --task-list-file ~/Ersilia-FS/dataset/min_size_08/entire_train_set.json --metric-to-use "roc_auc" --save-dir ~/Ersilia-FS/fs_mol/outputs/train/FSMol_Multitask_2024-05-29-support-08 --num_epochs 500
