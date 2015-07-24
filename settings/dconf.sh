#!/bin/bash

gsettings set com.canonical.Unity.Interface text-scale-factor 0.9
gsettings set org.gnome.desktop.interface text-scaling-factor 0.9
gsettings set org.gnome.desktop.interface gtk-theme Vertex
gsettings set org.gnome.desktop.interface icon-theme Numix-Circle
gsettings set org.gnome.desktop.wm.preferences theme Vertex


# Privacy
gsettings set com.canonical.Unity.Lenses remote-content-search 'none'
gsettings set com.canonical.indicator.appmenu.hud store-usage-data false
