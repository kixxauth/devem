DevEm
=====

A development environment based on VirtualBox and Vagrant

Setup
-----

### VirtualBox
Install from the [downloads page](https://www.virtualbox.org/wiki/Downloads).

### Vagrant
Install from the [downloads page](https://www.vagrantup.com/downloads.html).

### Provision
Provision the box with

    vagrant up --provision

This will run the provision script in `bin/provision.sh`.

Scripts
-------
Executable scripts can be found in `bin/`. They are on the VM via file sharing at `/vagrant/bin/`.

### Install .bashrc
__!Warning__: Installing .bashrc will overwrite any changes that have been made to the .bashrc already on the system at `/home/vagrant/.bashrc`. This may or may not be what you want to do.

    /vagrant/bin/install_bashrc.sh

### Install NVM (Node.js Version Manager)

    /vagrant/bin/install_nvm.sh
