#!/bin/bash

cat <<EOF | sudo tee /etc/apparmor.d/usr.bin.skype
# Last Modified: Tue Jun 12 03:49:49 2012 by izx
# REPOSITORY: http://apparmor.test.opensuse.org/backend/api draglor 53
# Additional profiling based on work by Андрей Калинин, LP: #226624

# Extremely simple profile for Skype designed ONLY to remove its panel
# icon on Ubuntu 12.04 by disabling access to the sni-qt library
# THIS PROFILE DOES NOT PROVIDE ANY OTHER KIND OF SECURITY

#include <tunables/global>

/usr/bin/skype {
  #include <abstractions/X>
  #include <abstractions/audio>
  #include <abstractions/base>
  #include <abstractions/dbus-session>
  #include <abstractions/fonts>
  #include <abstractions/freedesktop.org>
  #include <abstractions/kde>
  #include <abstractions/nameservice>
  #include <abstractions/nvidia>
  #include <abstractions/user-tmp>

  # deny read access to the sni-qt libraries, thus removing the panel icon
  deny /usr/lib/i386-linux-gnu/qt4/plugins/systemtrayicon/libsni-qt.so r,
  deny /usr/lib/x86_64-linux-gnu/qt4/plugins/systemtrayicon/libsni-qt.so r,
}
EOF

sudo service apparmor reload
