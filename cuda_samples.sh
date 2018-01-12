#!/bin/bash

echo "install cuda samples"

cuda-install-samples-9.1.sh ~/cuda_installation/
cd ~/cuda_installation/NVIDIA_CUDA-9.1_Samples/

echo "using all the cores to make"
make -j$(grep -c ^processor /proc/cpuinfo)

echo "verifying the installation"
cd bin/x86_64/linux/release/
./deviceQuery 

# if everything as expected
echo "finisehd installing and verifying cuda"


