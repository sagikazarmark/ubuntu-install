#!/bin/bash

RELEASE="$(lsb_release -sc)"

# Add PPAs
while read line
do
    sudo add-apt-repository -y $line
done < ppas
