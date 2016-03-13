~!/bin/bash

echo "installing python package manager (pip)"
sudo apt-get install python-pip

echo "Updating to latest version of pip"
sudo pip install -U pip setuptools

echo "installing python virtualenv via pip"
sudo pip install virtualenv
