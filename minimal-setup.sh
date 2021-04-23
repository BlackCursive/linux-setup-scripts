#!/bin/bash
echo "==================================="
echo " --- Ubuntu / KDE Setup Script  ---"
echo "==================================="
sleep 3
clear

echo "========= Installing KDE Plasma ========="
sleep 1
sudo apt update -y
sudo apt -y install kde-plasma-desktop plasma-nm
clear

echo "========= Installing Extras ========="
sleep 1
sudo apt update -y
sudo apt install -y curl git dolphin sddm software-properties-common ubuntu-restricted-extras synaptic pavucontrol gparted p7zip-full p7zip-rar gpart 
clear

echo "======== Installing Bitwarden, Mailspring, Gimp & Joplin ========"
sleep 1
sudo apt update -y
sudo apt install snapd
sudo snap install code --classic && sudo snap install bitwarden mailspring gimp joplin-james-carroll
clear

echo "======== Installing Brave Browser ========"
sleep 1
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser
clear

echo "======== Installing Zsh ========"
sleep 1
sudo apt update -y
sudo apt install -y zsh
chsh -s /usr/bin/zsh
sudo apt -y install powerline fonts-powerline zsh-theme-powerlevel9k zsh-syntax-highlighting
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
clear

echo "======== Installing Stacer ========"
sleep 1
sudo apt update -y
sudo apt install gdebi-core
wget -O ~/stacer.deb https://jaist.dl.sourceforge.net/project/stacer/v1.0.9/stacer_1.0.9_amd64.deb
sudo gdebi ~/stacer.deb
clear

echo "======== Installing OcenAudio ========"
sleep 1
sudo apt update -y
wget http://www.ocenaudio.com/downloads/ocenaudio_debian9_64.deb?
sudo gdebi ocenaudio_debian9_64.deb
clear

echo "======== Installing Ulauncher ========"
sleep 1
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update -y
sudo apt install ulauncher
clear

echo "======== Installing Python ========"
sleep 1
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.9
clear

echo "======== Installing Materia KDE ========"
sleep 1
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh | sh
clear

echo "======== Wrapping Up ========"
sleep 1
sudo apt full-upgrade -y --allow-downgrades
sudo apt autoremove -y --purge
sudo apt autoclean -y
sudo dpkg --configure -a
sudo apt-get upgrade -f
sudo apt-get autoremove
sudo apt-get upgrade
sudo reboot 
