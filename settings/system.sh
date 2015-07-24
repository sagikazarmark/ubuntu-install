#!/bin/bash

gsettings set org.gnome.desktop.wm.keybindings switch-input-source ['']
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward ['']

COMPIZ_PROFILE=$(gsettings get org.compiz current-profile)
COMPIZ_PROFILE="${COMPIZ_PROFILE%\'}"
COMPIZ_PROFILE="${COMPIZ_PROFILE#\'}"

gsettings set org.compiz.unityshell:/org/compiz/profiles/$COMPIZ_PROFILE/plugins/unityshell/ launcher-hide-mode 1
gsettings set org.compiz.unityshell:/org/compiz/profiles/$COMPIZ_PROFILE/plugins/unityshell/ show-launcher '<Alt>F1'
gsettings set org.compiz.unityshell:/org/compiz/profiles/$COMPIZ_PROFILE/plugins/unityshell/ edge-responsiveness 6
gsettings set org.compiz.core:/org/compiz/profiles/$COMPIZ_PROFILE/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/$COMPIZ_PROFILE/plugins/core/ vsize 2