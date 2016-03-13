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

echo "Installing dependencies for oh my zsh"
sudo apt-get install zsh

echo "Installing oh my zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`

echo "Installing Intellij Community Edition"
mkdir ~/software
wget http://download.jetbrains.com/idea/ideaIC-14.1.3.tar.gz
echo "Please press enter when intellij download completes"
read

INTELLIJ=~/Downloads/xfz ideaIC-14.1.3.tar.gz
if [ -e "$INTELLIJ" ]; then
 sudo tar $INTELLIJ -C ~/software/
fi

echo "Installs completed, Press ENTER to exit terminal as it needs to be restarted for oh my zsh"
read

exit
