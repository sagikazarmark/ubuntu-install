#!/bin/bash

wget http://dl.4players.de/ts/releases/3.0.16/TeamSpeak3-Client-linux_amd64-3.0.16.run -P /tmp

chmod +x /tmp/TeamSpeak3-Client-linux_amd64-3.0.16.run
sh /tmp/TeamSpeak3-Client-linux_amd64-3.0.16.run --target $HOME/.apps/ts3client/
ln -s $HOME/.apps/ts3client/ts3client_runscript.sh $HOME/.bin/ts3client

# Setup desktop file
wget http://www.heiven.com/forums/ccs_files/images/ts_logo.png -P $HOME/.local/share/applications/

cat <<EOF > $HOME/.local/share/applications/ts3client.desktop
[Desktop Entry]
Name=Teamspeak 3 Client
Version=3.0.16
Icon=$HOME/.local/share/applications/ts_logo.png
Exec=$HOME/.apps/ts3client/ts3client_runscript.sh
Terminal=false
X-MultipleArgs=false
Type=Application
StartupNotify=true
StartupWMClass=Teamspeak
EOF

# Clean up
rm /tmp/TeamSpeak3-Client-linux_amd64-3.0.16.run
