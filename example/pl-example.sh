#!/usr/bin/env/bash

#attempts to activate pathlinker_env in order to run pathlinker

#if env not configured, then pathlinker_env will be created

#conda init bash
eval "$(conda shell.bash hook)"
conda activate path-linker

if [ $? -ne 0 ]; then
	echo creating path-linker environment
	conda env create -f minimal_env.yml
	conda activate path-linker
fi

#run PathLinker
python ../run.py --output='script_out' sample-in-net.txt sample-in-nodetypes.txt

#run PathLinker with option write-paths
python ../run.py --write-paths --output='script_out' sample-in-net.txt sample-in-nodetypes.txt
