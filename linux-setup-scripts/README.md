# Bash Setup Script for Ubuntu

This setup script automates the install of the following:

* kubuntu-desktop
* Python 3.9
* Bitwarden
* Mailspring
* Joplin
* Brave Browser
* Dolphi
* Stacer
* Gimp
* and extras


# Installation
SSH into your server and install git:
```bash
sudo apt-get update
sudo apt-get install git
```

Clone this repository into your home directory:
```bash
cd ~
git clone https://github.com/BlackCursive/ubuntu-setup-scripts.git
```

Run the setup script
```bash
cd ubuntu-setup-scripts
bash minimal-setup.sh
