#!/bin/bash

sudo touch /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla

cat <<EOF | sudo tee /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
[Re-enable hibernate by default]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes
EOF
