#!/bin/bash

PHPBREW_HOME="$HOME/.apps/phpbrew"
PHPBREW_ROOT="$PHPBREW_HOME"

wget https://github.com/phpbrew/phpbrew/raw/master/phpbrew -P $HOME/.bin/
chmod +x $HOME/.bin/phpbrew
echo 'export PHPBREW_HOME="$HOME/.apps/phpbrew"' >> $HOME/.bashrc
echo 'export PHPBREW_ROOT="$PHPBREW_HOME"' >> $HOME/.bashrc
phpbrew init
echo 'source $PHPBREW_HOME/bashrc' >> $HOME/.bashrc
wget https://raw.githubusercontent.com/phpbrew/phpbrew/develop/completion/bash/_phpbrew -P $PHPBREW_HOME
echo 'source $PHPBREW_HOME/_phpbrew' >> $HOME/.bashrc

# Build dependencies
sudo apt-get install libxml2-dev libbz2-dev libicu-dev libmcrypt-dev libreadline-dev libxslt1-dev
