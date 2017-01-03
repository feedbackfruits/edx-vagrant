#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
echo "Running operating system updates..."
apt-get update -y
apt-get upgrade -y
echo "Installing required packages..."
wget https://raw.githubusercontent.com/edx/configuration/master/util/install/ansible-bootstrap.sh -O - | sudo bash
wget https://raw.githubusercontent.com/edx/configuration/master/util/install/sandbox.sh -O - | bash
