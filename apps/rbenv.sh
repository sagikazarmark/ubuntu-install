#!/bin/bash

git clone https://github.com/sstephenson/rbenv.git $HOME/.apps/rbenv
echo 'export RBENV_ROOT="$HOME/.apps/rbenv"' >> $HOME/.bashrc
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc

git clone https://github.com/sstephenson/ruby-build.git $HOME/.apps/rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update.git $HOME/.apps/rbenv/plugins/ruby-update
