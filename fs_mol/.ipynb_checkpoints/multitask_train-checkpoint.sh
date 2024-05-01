#!/bin/bash -l
#SBATCH -o multitask_train.sh.log-%j-%a
#SBATCH -c 20
#SBATCH --gres=gpu:volta:1

module unload anaconda
module load anaconda/2023a-pytorch

python multitask_train.py ~/Ersilia-FS/dataset --task-list-file ~/Ersilia-FS/dataset/entire_train_set.json
