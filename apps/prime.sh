#!/bin/bash

wget https://github.com/beidl/prime-indicator/archive/master.tar.gz -P /tmp
tar xvzf /tmp/master.tar.gz -C /tmp

sudo apt-get install python-appindicator

cd /tmp/prime-indicator-master
sudo ./setup.sh
