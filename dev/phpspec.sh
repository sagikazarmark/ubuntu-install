#!/bin/bash

cat <<EOF > $HOME/.bin/phpspec
PHPSPEC="$PWD/vendor/bin/phpspec"

if [ -f $PHPSPEC ]; then
	$PHPSPEC $@
fi
EOF

chmod +x $HOME/.bin/phpspec
