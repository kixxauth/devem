#!/usr/bin/env bash

echo "************************************************************"
echo "Configuring locale"
echo "************************************************************"
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

echo "************************************************************"
echo "Updating repositories"
echo "************************************************************"
sudo apt-get update

echo "************************************************************"
echo "Upgrading the distro"
echo "************************************************************"
# Prevent interactive menus during install
# http://askubuntu.com/questions/146921/how-do-i-apt-get-y-dist-upgrade-without-a-grub-config-prompt
sudo DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --assume-yes

echo "************************************************************"
echo "Cleaning up"
echo "************************************************************"
sudo apt-get autoremove --assume-yes
sudo apt-get autoclean --assume-yes

echo "************************************************************"
echo "Installing common dependencies and tools"
echo "************************************************************"
sudo apt-get install --assume-yes \
  build-essential \
  libssl-dev \
  curl \
  wget \
  vim \
  tree \
  unzip \
  htop

echo "************************************************************"
echo "Cleaning up"
echo "************************************************************"
sudo apt-get autoremove --assume-yes
sudo apt-get autoclean --assume-yes
