#!/usr/bin/env/bash 
#activate pathlinker_env in order to run pathlinker

conda init bash

#source ~/Anaconda3/etc/profile.d/conda.sh

eval "$(conda shell.bash hook)"
conda activate pathlinker_env
conda info --envs


