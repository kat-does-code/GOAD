#!/bin/bash

# Install git and python3
sudo apt-get update
sudo apt-get install -y git python3-venv python3-pip sshpass

#python3 -m venv .venv
#source .venv/bin/activate

# Install ansible and pywinrm
python3 -m pip install --upgrade pip
python3 -m pip install ansible-core==2.12.6
python3 -m pip install pywinrm

# Install the required ansible libraries
/home/goad/.local/bin/ansible-galaxy install -r /home/goad/GOAD/ansible/requirements_311.yml

# set color
sudo sed -i '/force_color_prompt=yes/s/^#//g' /home/*/.bashrc
sudo sed -i '/force_color_prompt=yes/s/^#//g' /root/.bashrc