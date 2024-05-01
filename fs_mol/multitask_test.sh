#!/bin/bash -l
#SBATCH -o multitask_test.sh.log-%j-%a
#SBATCH -c 20
#SBATCH --gres=gpu:volta:1

module unload anaconda
module load anaconda/2023a-pytorch

python multitask_test.py ~/Ersilia-FS/weights/multitask_best_model.pt ~/Ersilia-FS/dataset