#!/bin/bash -l
# SBATCH -o protonet_test.sh.log-05-03-support-04
# SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python protonet_test.py ~/Ersilia-FS/weights/PN-Support64_best_validation.pt ~/Ersilia-FS/dataset/min_size_04 --train-sizes [4] --save-dir ~/Ersilia-FS/fs_mol/outputs/test/FSMol_Eval_ProtoNet_2024-05-03-support-04
