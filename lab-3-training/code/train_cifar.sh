#!/usr/bin/env bash

#SBATCH --job-name=lab2
#SBATCH --partition=teach_gpu
#SBATCH --nodes=1
#SBATCH --output train_cifar.out
#SBATCH --gres=gpu:1
#SBATCH --time=0:20:00
#SBATCH --mem=4GB

# get rid of any modules already loaded
module purge
# load in the module dependencies for this script
module load "languages/anaconda3/2021-3.8.8-cuda-11.1-pytorch"

python train_cifar.py --learning-rate 1e-1 --batch-size 128 --sgd-momentum 0.9
