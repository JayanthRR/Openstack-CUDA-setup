#!/bin/bash

echo "make sure that cudnn tgz file is downloaded"

tar xvzf cudnn-9.1-linux-x64-v7.tgz

sudo cp -P cuda/include/cudnn.h /usr/local/cuda-9.1/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-9.1/lib64
sudo chmod a+r /usr/local/cuda-9.1/includ/cudnn.h /usr/local/cuda-9.1/lib64/libcudnn*

sudo apt-get install libcupti-dev

echo "finished installing libcudnn"

