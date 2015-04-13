#!/bin/bash

wget http://download3.navicat.com/download/navicat111_mysql_en.tar.gz -P /tmp

tar -xvzf /tmp/navicat111_mysql_en.tar.gz -C $HOME/.apps/

cat <<EOF > $HOME/.bin/navicat
sh $HOME/.apps/navicat111_mysql_en/start_navicat
EOF
chmod +x $HOME/.bin/navicat

wget http://navicat.com/images/stories/download/navicat-for-mysql-logo.png -P $HOME/.local/share/applications/

cat <<EOF > $HOME/.local/share/applications/navicat.desktop
[Desktop Entry]
Name=Navicat MySQL
Version=11.1
Comment=Navicat MySQL database manager
Icon=$HOME/.local/share/applications/navicat-for-mysql-logo.png
Exec=$HOME/.apps/navicat111_mysql_en/start_navicat
Terminal=false
X-MultipleArgs=false
Type=Application
StartupNotify=true
StartupWMClass=Navicat.exe
EOF

# Clean up
rm /tmp/navicat111_mysql_en.tar.gz
