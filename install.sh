#!/bin/bash

# Install script for Ubuntu (Utopic)

# Ubuntu code name
RELEASE=$(lsb_release -sc)

# Add PPAs
sudo add-apt-repository ppa:amandeepgrewal/notifyosdconfig
sudo add-apt-reporitory ppa:atareao/atareao
sudo add-apt-repository ppa:caffeine-developers/ppa
sudo add-apt-repository ppa:costales/anoise
sudo add-apt-repository ppa:daniel.pavel/solaar
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo add-apt-repository ppa:gencfsm/ppa
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:inkscape.dev/stable
sudo add-apt-repository ppa:konradgraefe/pidgin-plugins
sudo add-apt-repository ppa:leolik/leolik
sudo add-apt-repository ppa:libreoffice/ppa
sudo add-apt-repository ppa:linrunner/tlp
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository ppa:minecraft-installer-peeps/minecraft-installer
sudo add-apt-repository ppa:moka/stable
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository ppa:peterlevi/ppa
sudo add-apt-repository ppa:pidgin-developers/ppa
sudo add-apt-repository ppa:ppa:qos/pulseaudio-dlna
sudo add-apt-repository ppa:tualatrix/next
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo add-apt-repository ppa:webupd8team/haguichi
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/nemo
sudo add-apt-repository ppa:webupd8team/puddletag
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/y-ppa-manager

echo "deb http://apt.insynchq.com/ubuntu $RELEASE non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

echo "deb http://download.virtualbox.org/virtualbox/debian $RELEASE contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install synaptic

# Install packages with synaptic
