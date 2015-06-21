#!/bin/bash

RELEASE="$(lsb_release -sc)"

# Add Insync repository
echo "deb http://apt.insynchq.com/ubuntu $RELEASE non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

# Add Virtualbox repository
echo "deb http://download.virtualbox.org/virtualbox/debian $RELEASE contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Enable partner repositories
sudo sed -i "/$RELEASE partner/s/^# //g" /etc/apt/sources.list
