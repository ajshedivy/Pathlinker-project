#!/usr/bin/env/bash 

#attempts to activate pathlinker_env in order to run pathlinker

#if env not configured, then pathlinker_env will be created 

conda init bash


eval "$(conda shell.bash hook)"
conda activate pathlinker_env

if [ $? -ne 0 ]; then
	echo creating pathlinker_env environment
	conda env create -f environment.yml
	conda activate pathlinker_env
fi
conda info --envs

 


