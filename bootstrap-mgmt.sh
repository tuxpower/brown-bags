#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
aptitude update
aptitude -y install ansible python-dev python-pip
pip install pyrax

# copy examples into /home/vagrant (from inside the mgmt node)
rsync -ah /vagrant/ /home/rack
chown -R rack. /home/rack
