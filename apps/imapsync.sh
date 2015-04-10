#!/bin/bash

git clone https://github.com/imapsync/imapsync.git $HOME/.apps/imapsync
ln -s $HOME/.apps/imapsync/imapsync $HOME/.bin/imapsync

sudo apt-get install libmail-imapclient-perl libio-tee-perl libdigest-md5-file-perl libterm-readkey-perl libfile-copy-recursive-perl libunicode-string-perl
