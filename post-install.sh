#!/bin/bash

# Install hamachi
./apps/hamachi.sh

# Install prime indicator
./apps/prime.sh

# Install rbenv
./apps/rbenv.sh

# Install TS3
./apps/ts3client.sh

# Install PHPbrew
./dev/phpbrew.sh

phpbrew install 5.6 +gd +gettext +mcrypt +phar +session +soap +xdebug +xmlrpc
phpbrew install 5.5 +gd +gettext +mcrypt +phar +session +soap +xdebug +xmlrpc
phpbrew install 5.4 +gd +gettext +mcrypt +phar +session +soap +xdebug +xmlrpc

# Install box
./dev/box.sh

# Install codeception
./dev/codecept.sh

# Install composer
./dev/composer.sh

# Install navicat
./dev/navicat.sh

# Install node
./dev/node.sh

# Install phpspec
./dev/phpspec.sh

# Install phpunit
./dev/phpunit.sh

# Install psysh
./dev/psysh.sh

# Install robo
./dev/robo.sh

# Install rocketeer
./dev/rocketeer.sh

# Install vagrant
./dev/vagrant.sh

# Install virtphp
./dev/virtphp.sh

npm install -g bower grunt-cli bootlint raml-cop
sudo pip install speedtest-cli supervisor

# Install steam
./games/steam.sh
