#!/bin/bash

sudo apt-get install mono-complete

wget https://bitbucket.org/Xargoth/tuxlol/downloads/tuxlol-0.1-dd62ba8-bin.tar.gz -P /tmp
tar xvzf /tmp/tuxlol-0.1-dd62ba8-bin.tar.gz -C /tmp

mono /tmp/tuxlol-0.1-dd62ba8-bin/tuxlol.exe patch --dir $HOME/.PlayOnLinux/wineprefix/LeagueOfLegends/drive_c/Riot\ Games/League\ of\ Legends/
