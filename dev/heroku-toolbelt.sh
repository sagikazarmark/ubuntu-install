#!/bin/bash

# Add Heroku repository
echo "deb http://toolbelt.heroku.com/ubuntu ./" | sudo tee /etc/apt/sources.list.d/heroku.list
wget -q https://toolbelt.heroku.com/apt/release.key -O- | sudo apt-key add -

sudo apt-get install heroku-toolbelt
