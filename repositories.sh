#!/bin/bash

RELEASE="$(lsb_release -sc)"

# Insync
echo "deb http://apt.insynchq.com/ubuntu $RELEASE non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list
wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

# Virtualbox
echo "deb http://download.virtualbox.org/virtualbox/debian $RELEASE contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Enable partner repositories
sudo sed -i "/$RELEASE partner/s/^# //g" /etc/apt/sources.list

# Dukto
echo "deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_15.04/ /" | sudo tee /etc/apt/sources.list.d/dukto.list
wget -q http://download.opensuse.org/repositories/home:colomboem/xUbuntu_15.04/Release.key -O- | sudo apt-key add -

# HipChat
echo "deb http://downloads.hipchat.com/linux/apt stable main" | sudo tee /etc/apt/sources.list.d/atlassian-hipchat.list
wget -q https://www.hipchat.com/keys/hipchat-linux.key -O- | sudo apt-key add -

# Horst Themes
echo "deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /" | sudo tee /etc/apt/sources.list.d/horst-themes.list
wget -q http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key -O- | sudo apt-key add -

# Spotify
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 D2C19886


echo "deb [arch=amd64,i386] http://repo.steampowered.com/steam/ precise steam" | sudo tee /etc/apt/sources.list.d/steam.list
echo "deb-src [arch=amd64,i386] http://repo.steampowered.com/steam/ precise steam" | sudo tee -a /etc/apt/sources.list.d/steam.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7

# Update PPAs

if [[ -f /etc/apt/sources.list.d/amandeepgrewal-ubuntu-notifyosdconfig-$RELEASE.list ]]; then
	sudo mv /etc/apt/sources.list.d/amandeepgrewal-ubuntu-notifyosdconfig-$RELEASE.list /etc/apt/sources.list.d/amandeepgrewal-ubuntu-notifyosdconfig-utopic.list
	sudo sed -i "s/$RELEASE/utopic/g" /etc/apt/sources.list.d/amandeepgrewal-ubuntu-notifyosdconfig-utopic.list
fi

if [[ -f /etc/apt/sources.list.d/skype-wrapper-ubuntu-ppa-$RELEASE.list ]]; then
	sudo mv /etc/apt/sources.list.d/skype-wrapper-ubuntu-ppa-$RELEASE.list /etc/apt/sources.list.d/skype-wrapper-ubuntu-ppa-trusty.list
	sudo sed -i "s/$RELEASE/trusty/g" /etc/apt/sources.list.d/skype-wrapper-ubuntu-ppa-trusty.list
fi

if [[ -f /etc/apt/sources.list.d/daniel_pavel-ubuntu-solaar-$RELEASE.list ]]; then
	sudo mv /etc/apt/sources.list.d/daniel_pavel-ubuntu-solaar-$RELEASE.list /etc/apt/sources.list.d/daniel_pavel-ubuntu-solaar-trusty.list
	sudo sed -i "s/$RELEASE/trusty/g" /etc/apt/sources.list.d/daniel_pavel-ubuntu-solaar-trusty.list
fi

if [[ -f /etc/apt/sources.list.d/konradgraefe-ubuntu-pidgin-plugins-$RELEASE.list ]]; then
	sudo mv /etc/apt/sources.list.d/konradgraefe-ubuntu-pidgin-plugins-$RELEASE.list /etc/apt/sources.list.d/konradgraefe-ubuntu-pidgin-plugins-trusty.list
	sudo sed -i "s/$RELEASE/trusty/g" /etc/apt/sources.list.d/konradgraefe-ubuntu-pidgin-plugins-trusty.list
fi
