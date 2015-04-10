#!/bin/bash

wget http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz -P /tmp
tar -xvzf /tmp/node-v0.10.33-linux-x64.tar.gz -C $HOME/.apps/
ln -s $HOME/.apps/node-v0.10.33-linux-x64/bin/node $HOME/.bin/node
ln -s $HOME/.apps/node-v0.10.33-linux-x64/bin/npm $HOME/.bin/npm
echo 'export PATH="$HOME/.apps/npm:$PATH"' >> $HOME/.bashrc
$HOME/.bin/npm config set prefix $HOME/.apps/npm
