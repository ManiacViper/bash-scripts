~!/bin/bash

clear

echo "Installing vim"
sudo apt-get install vim

echo "Installing latest git"
sudo apt-get install git

echo "Installing tig"
sudo apt-get install tig

echo "Installing htop"
sudo apt-get install htop

echo "Installing curl"
sudo apt-get install curl

echo "Installing maven"
sudo apt-get install maven

echo "Installing meld"
sudo apt-get install meld

echo "Installing terminator"
sudo apt-get install terminator

echo "Installing log viewer - glogg"
sudo apt-get install glogg

echo "Installing dependencies for oh my zsh"
sudo apt-get install zsh

echo "Installing oh my zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`

echo "Installs completed, Press ENTER to exit terminal as it needs to be restarted for oh my zsh"
read

exit
