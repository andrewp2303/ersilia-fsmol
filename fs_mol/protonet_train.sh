#!/bin/bash -l
#SBATCH -o protonet_train.sh.log-05-03-support-16-lr-10-trial
#SBATCH -c 16

module unload anaconda
module load anaconda/2023a

python protonet_train.py ~/Ersilia-FS/dataset/min_size_16 --support_set_size 16 --validation-support-set-sizes [16] --num_train_steps 2500 --validate_every 100 --pretrained_gnn ~/Ersilia-FS/weights/multitask_best_model.pt --task-list-file ~/Ersilia-FS/dataset/min_size_16/entire_train_set.json --save-dir ~/Ersilia-FS/fs_mol/outputs/train/FSMol_ProtoNet_2024-05-03-support-16 --tasks_per_batch 1