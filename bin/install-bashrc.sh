#!/usr/bin/env bash

echo "************************************************************"
echo "Installing .bashrc"
echo "************************************************************"
cp .bashrc /home/vagrant/.bashrc
sudo chown vagrant:vagrant /home/vagrant/.bashrc
