#!/bin/bash

# open terminal
terminator &!

# open log viewer 
glogg &!

# open intellij
cd /home/agile/software/idea-IU-141.1532.4/bin
./idea.sh &!

# go to development directory 
cd /home/agile/dev/services

# open slack
scudcloud &!

# open chrome
google-chrome &!

# open spotify
#spotify &!

# start vm and display vm details
#read -p 'Enter vm name <ml5 ubuntu | ml7 ubuntu>: ' vm_name
#read -p 'Enter vm status <run | shutdown>: ' vm_control 

#vm_name="ml7 ubuntu"
#vm_control="run"

#if [ "$vm_control" == "run" ];
#then
 #VBoxManage startvm "$vm_name" --type headless
 #vm_status="$(VBoxManage showvminfo "$vm_name" | grep State: | grep -oP "\brunning\b")"
#else
 #VBoxManage controlvm "$vm_name" poweroff
 #vm_status="$(VBoxManage showvminfo "$vm_name" | grep State: | grep -oP "\bpowered off\b")"
#fi

#if [ "$vm_status" == "running" ];
#then echo "$vm_name" " is running"
#else echo "$vm_name" " is shutdown" 
#fi
