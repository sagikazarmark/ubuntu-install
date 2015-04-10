#!/bin/bash

PROFILE_PATH=$HOME/.mozilla/firefox/`cat ~/.mozilla/firefox/profiles.ini | grep Path | head -1 | sed s/Path=//`

mkdir -p $PROFILE_PATH/chrome

cat <<EOF > $PROFILE_PATH/chrome/userChrome.css
@namespace xul url(http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul);

tab:not([pinned]) {
  /*max-width: 250px !important;*/
  min-width: 100px !important;
}

tab.tabbrowser-tab[selected="true"]:not([pinned]) { min-width: 200px !important; }

EOF
