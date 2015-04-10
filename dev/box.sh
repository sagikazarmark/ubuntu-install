#!/bin/bash

curl -LSs https://box-project.github.io/box2/installer.php | php
mv box.phar $HOME/.bin/box
