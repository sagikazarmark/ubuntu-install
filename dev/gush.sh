#!/bin/bash

curl -sS http://gushphp.org/installer | php
mv gush.phar $HOME/.bin/gush
gush core:configure
gush core:autocomplete

echo 'source $HOME/.gush/.gush-autocomplete.bash' >> $HOME/.bashrc
