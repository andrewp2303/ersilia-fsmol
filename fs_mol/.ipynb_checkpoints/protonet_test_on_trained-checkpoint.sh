#!/bin/bash -l
#SBATCH -o protonet_test.sh.log-08
#SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python protonet_test.py ~/Ersilia-FS/fs_mol/outputs/train/FSMol_ProtoNet_2024-05-03-support-08/FSMol_ProtoNet_gnn+ecfp+fc_2024-05-29_22-13-03/best_validation.pt ~/Ersilia-FS/dataset/min_size_08 --train-sizes [8] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_ProtoNet_on_fine_tuned-support-08