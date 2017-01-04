#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "Running operating system updates"
apt-get update -y
apt-get upgrade -y

echo "Installing ansible-bootstrap.sh"
wget https://raw.githubusercontent.com/edx/configuration/open-release/eucalyptus.master/util/install/ansible-bootstrap.sh -O - | sudo bash

echo "Installing sandbox.sh"
wget https://raw.githubusercontent.com/edx/configuration/open-release/eucalyptus.master/util/install/sandbox.sh -O - | bash
