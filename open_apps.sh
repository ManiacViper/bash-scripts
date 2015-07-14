#!/bin/bash

# open intellij
cd /home/agile/software/idea-IU-141.713.2/bin
./idea.sh &!
cd ~

# open slack
scudcloud &!

# open chrome
google-chrome &!

# open spotify
spotify &!

# start vm and display vm details
read -p 'Enter vm name <ml5 ubuntu | ml7 ubuntu>: ' vm_name
read -p 'Enter vm status <run | shutdown>: ' vm_control 

if [ "$vm_control" == "run" ];
then
 VBoxManage startvm "$vm_name" --type headless
 vm_status="$(VBoxManage showvminfo "$vm_name" | grep State: | grep -oP "\brunning\b")"
else
 VBoxManage controlvm "$vm_name" poweroff
 vm_status="$(VBoxManage showvminfo "$vm_name" | grep State: | grep -oP "\bpowered off\b")"
fi

if [ "$vm_status" == "running" ];
then echo "$vm_name" " is running"
else echo "$vm_name" " is shutdown" 
fi
