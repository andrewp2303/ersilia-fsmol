#!/bin/bash -l
#SBATCH -o protonet_test_on_fine_tuned.sh.log-05-03-support-16
#SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python protonet_test.py ~/Ersilia-FS/fs_mol/outputs/train/LR-0.0001/FSMol_Eval_ProtoNet_2024-05-03-support-16/best_validation.pt ~/Ersilia-FS/dataset/min_size_16 --train-sizes [16] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_ProtoNet_on_fine_tuned_2024-05-03-support-16