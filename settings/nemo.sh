#!/bin/bash

# Set nemo as default
gsettings set org.gnome.desktop.background show-desktop-icons false
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# Disable Nemo Terminal by default
# gsettings set org.nemo.extensions.nemo-terminal default-visible false
