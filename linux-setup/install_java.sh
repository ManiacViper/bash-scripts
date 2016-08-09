~!/bin/bash

cd ~/Downloads

wget http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz

tar -xvf ~/Downloads/jdk-8u101-linux-x64.tar.gz

sudo mv ~/Downloads/jdk1.8* /usr/lib/jvm/jdk1.8.0


sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0/bin/javaws" 1

sudo chmod a+x /usr/bin/java
sudo chmod a+x /usr/bin/javac
sudo chmod a+x /usr/bin/javaws

# Command to switch to the correct java/javac/javaws version
# sudo update-alternatives --config java
