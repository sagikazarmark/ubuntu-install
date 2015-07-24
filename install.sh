#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

sudo apt-get install -y synaptic gdebi debconf-utils launchpad-getkeys

# Remove all PPA GPG keys to remove duplicates
sudo rm -rf /etc/apt/trusted.gpg.d/*_ubuntu_*.gpg
sudo rm -rf /etc/apt/trusted.gpg.d/*_ubuntu_*.gpg~

# Redownload GPG keys (if needed)
sudo launchpad-getkeys

sudo apt-get update

if [ -f "debconf.seed" ]; then
	echo "Loading debconf selections"
	sudo debconf-set-selections debconf.seed
fi

echo "Open synaptic and load the relevant package lists"
