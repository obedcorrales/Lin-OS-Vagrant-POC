#!/usr/bin/env bash

echo "Root Provisioning (as '$USER' user)"
cd /home/vagrant
# add-apt-repository ppa:git-core/ppa
apt-get update
# apt-get install -y vim git-core curl

# apt-get install -y apache2
# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi