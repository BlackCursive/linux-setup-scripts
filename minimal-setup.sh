#!/bin/bash
echo "==================================="
echo " --- Ubuntu / KDE Setup Script  ---"
echo "==================================="
echo "========= Minimal Install ========="

sleep 3
clear
sudo apt update -y
sudo apt -y install kde-plasma-desktop plasma-nm
sudo apt update -y

sudo apt install -y stacer curl git dolphin brave-browser snapd tasksel sddm gimp software-properties-common ubuntu-restricted-extras synaptic pavucontrol gparted p7zip-full p7zip-rar gpart 
sudo apt update -y

sudo snap install code --classic && sudo snap install bitwarden mailspring joplin-james-carroll
sudo apt update -y

sudo apt -y zsh
chsh -s /usr/bin/zsh
sudo apt -y install powerline fonts-powerline zsh-theme-powerlevel9k zsh-syntax-highlighting
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
sudo apt update -y

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.9

sudo apt full-upgrade -y --allow-downgrades
sudo apt autoremove -y --purge
sudo apt autoclean -y
