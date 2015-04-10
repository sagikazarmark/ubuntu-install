#!/bin/bash

# Initialize installer environment
mkdir -p $HOME/.apps/ $HOME/.bin/ $HOME/.games/
echo 'export PATH="$HOME/.bin:$PATH"' >> ~/.bashrc
