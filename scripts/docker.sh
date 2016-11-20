#!/bin/bash
#
# You can install anything you need here.

echo "Installing latest version from Docker"
curl -fsSL https://get.docker.com/ | sh
#apt-get -y install docker.io
usermod -aG docker vagrant

echo "Installing latest version of docker-compose"
curl -fsSL https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo "cd /vagrant" >> /home/vagrant/.profile

echo "Finish"
