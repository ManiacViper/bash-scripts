#!/bin/bash

#open terminator
terminator &!

# open intellij
cd ~/software/android-studio/bin
./studio.sh &!

#go home current project directory
cd ~

# open chrome
google-chrome &!

# open spotify
spotify &!
