#!/bin/bash

echo "install linux headers"
echo $(uname -r)
sudo apt-get install linux-headers-$(uname -r)

# if executed without mistake
echo "finished installing headers"

echo "make sure that cuda-repo-ubuntu1604_<version>_amd64.deb is copied"
echo "this script is for installing version 9.1.85-1"
echo "installing cuda"

sudo dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub

sudo apt-get update
sudo apt-get install cuda

# if everything is fine
echo "finished installing cuda"

echo 'export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}' >> ~/.bashrc
source ~/.bashrc



