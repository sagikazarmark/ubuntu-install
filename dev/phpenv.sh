#!/bin/bash

git clone https://github.com/phpenv/phpenv.git $HOME/.apps/phpenv
echo 'export PHPENV_ROOT="$HOME/.apps/phpenv"' >> $HOME/.bashrc
echo 'export PATH="$PHPENV_ROOT/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(phpenv init -)"' >> $HOME/.bashrc
