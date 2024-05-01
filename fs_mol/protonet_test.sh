#!/bin/bash -l
#SBATCH -o protonet_test.sh.log-%j-%a
#SBATCH -c 20

module unload anaconda
module load anaconda/2023a

python protonet_test.py ~/Ersilia-FS/weights/PN-Support64_best_validation.pt ~/Ersilia-FS/dataset