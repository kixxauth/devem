#!/usr/bin/env bash

echo "************************************************************"
echo "Adding PPA repository"
echo "************************************************************"
sudo add-apt-repository ppa:chris-lea/redis-server

echo "************************************************************"
echo "Updating repositories"
echo "************************************************************"
sudo apt-get update

echo "************************************************************"
echo "Installing Redis Server"
echo "************************************************************"
sudo apt-get install -y redis-server
