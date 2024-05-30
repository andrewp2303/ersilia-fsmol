#!/bin/bash -l
#SBATCH -o protonet_train.sh.log-05-29-support-08
#SBATCH -c 16

module unload anaconda
module load anaconda/2023a

python protonet_train.py ~/Ersilia-FS/dataset/min_size_08 --task-list-file ~/Ersilia-FS/dataset/min_size_08/entire_train_set.json --support_set_size 8 --validation-support-set-sizes [8] --save-dir ~/Ersilia-FS/fs_mol/outputs/train/FSMol_ProtoNet_2024-05-03-support-08