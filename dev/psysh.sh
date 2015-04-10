#!/bin/bash

wget psysh.org/psysh -P $HOME/.bin
chmod +x $HOME/.bin/psysh
mkdir -p $HOME/.local/share/psysh/

wget http://psysh.org/manual/en/php_manual.sqlite -P $HOME/.local/share/psysh/
