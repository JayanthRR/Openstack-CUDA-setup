#!/bin/bash

cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm -rf get-pip.py ~/.cache/pip

sudo apt-get install python3-dev python3-pip

sudo pip install virtualenv virtualenvwrapper

echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

source ~/.bashrc

