#!/bin/bash

wget https://phar.phpunit.de/phpunit.phar -O $HOME/.bin/phpunit.local
chmod +x $HOME/.bin/phpunit.local

cat <<EOF > $HOME/.bin/phpunit
PHPUNIT="$PWD/vendor/bin/phpunit"
PHPUNIT2="$PWD/bin/phpunit"

if [ -f $PHPUNIT ]; then
	$PHPUNIT $@
elif [ -f $PHPUNIT2 ]; then
	$PHPUNIT2 $@
else
	$HOME/.bin/phpunit.local $@
fi
EOF

chmod +x $HOME/.bin/phpunit
