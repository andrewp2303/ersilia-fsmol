#!/bin/bash -l
#SBATCH -o protonet_train.sh.log-%j-%a
#SBATCH -c 48

module unload anaconda
module load anaconda/2023a

python protonet_train.py ~/Ersilia-FS/dataset --support_set_size 15 --validation-support-set-sizes [15] --num_train_steps 100 --validate_every 10 --pretrained_gnn ~/Ersilia-FS/weights/PN-Support64_best_validation.pt --task-list-file ~/Ersilia-FS/dataset/entire_train_set.json
