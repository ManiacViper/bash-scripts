~!/bin/bash

echo "Downloading and installing sublime 3"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

echo "Installing Intellij Community Edition"
mkdir ~/software
cd ~/software
sudo wget http://download.jetbrains.com/idea/ideaIC-14.1.3.tar.gz

echo "Please press enter when intellij download completes"
read INTELLIJ=~/software/*idea*.tar.gz
if [ -e "$INTELLIJ" ]; then
	sudo tar $INTELLIJ -C ~/software/
fi

rm ideaIC-14.1.3.tar.gz
