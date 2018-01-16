
This repository contains scripts to install cuda, verify the installation, install cudnn and set up virtualenv wrappers for python. It is assumed that the clound instance runs Ubuntu 16.04. 

Git clone this repository, if you want to install the versions of cuda and cudnn availble here. Else, you will have to download the latest version and make minor changes to the scripts. I shall try to mention places where the script has to be changed

- First, run cuda_install.sh.
- Once, the script finishes execution, then run sudo nvidia_cuda_driver.sh.
- Run cuda_samples.sh to check if the installation is correct
- Run cudnn_install.sh to install cudnn v7. 

The installation is complete. Just to check, you can check the output of cuda_samples.sh to see if cuda is installed properly. 
You can also run which nvcc to check the version of cuda installed.

To check if nvidia drivers are installed properly, run
nvidia-smi and check the output. 

I also added scripts to create a virtual environment in python using wrappers. 
The wrappers are due to <mention the name of the tutorial>
- Run virtual_install.sh

The script also sources ~/.bashrc, but just to make sure run 
source ~/.bashrc

Now you can create a virtual environment easily using
mkvirtualenv <name> -p python2/3

workon <name>

deactivate


