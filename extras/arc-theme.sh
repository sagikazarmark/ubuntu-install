#!/bin/bash

echo "deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /" | sudo tee /etc/apt/sources.list.d/arc-theme.list
wget -q http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install arc-theme

