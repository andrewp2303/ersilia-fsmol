#!/bin/bash -l
#SBATCH -o protonet_train.sh.log-05-03-support-04
#SBATCH -c 48

module unload anaconda
module load anaconda/2023a

python protonet_train.py ~/Ersilia-FS/dataset/min_size_04 --support_set_size 4 --validation-support-set-sizes [4] --num_train_steps 2500 --validate_every 250 --pretrained_gnn ~/Ersilia-FS/weights/PN-Support64_best_validation.pt --task-list-file ~/Ersilia-FS/dataset/min_size_04/entire_train_set.json --save-dir ~/Ersilia-FS/fs_mol/outputs/train/FSMol_Eval_ProtoNet_2024-05-03-support-04
