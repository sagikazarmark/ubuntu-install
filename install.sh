#!/bin/bash

# Add PPAs
while read line
do
    sudo add-apt-repository -y $line
done < ppas

# Add Insync repository
echo "deb http://apt.insynchq.com/ubuntu $(lsb_release -sc) non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

# Add Virtualbox repository
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add Heroku repository
echo "deb http://toolbelt.heroku.com/ubuntu ./" | sudo tee /etc/apt/sources.list.d/heroku.list
wget -q https://toolbelt.heroku.com/apt/release.key -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
sudo apt-get install -y synaptic debconf-utils

if [ -f "debconf.seed" ]; then
	echo "Loading debconf selections"
	sudo debconf-set-selections debconf.seed
fi

echo "Open synaptic and load the relevant package lists"
