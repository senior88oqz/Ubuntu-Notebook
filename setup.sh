#!/bin/sh

sudo cp /etc/sudoers /root/sudoers.bak
echo "%sudo  ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
sudo apt install vim git zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sudo chsh -s `which zsh`
sudo shutdown -r 0

