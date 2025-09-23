#!/bin/bash
nn=1
key=2020
while [ "$nn" -le 10 ]; do
 CUDA_VISIBLE_DEVICES='0,1' python3 /content/PDEBench/pdebench/data_gen/data_gen_NLE/CompressibleFluid/CFD_multi_Hydra.py +args=1D_Multi_4.yaml ++args.init_key="$key"
 nn=$((nn + 1))
 key=$((key + 1))
 echo "$nn"
 echo "$key"
done
