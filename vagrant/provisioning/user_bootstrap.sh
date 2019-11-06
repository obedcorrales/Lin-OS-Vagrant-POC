#!/usr/bin/env bash

nodeversion=12.13.0

echo "User Provisioning (as '$USER' user)"
cd /home/vagrant
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
# wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export NVM_DIR="/home/vagrant/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install $nodeversion
nvm alias default $nodeversion