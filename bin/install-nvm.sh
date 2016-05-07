#!/usr/bin/env bash

NVM_VERSION="v0.31.0"

echo "************************************************************"
echo "Updating repositories"
echo "************************************************************"
sudo apt-get update

echo "************************************************************"
echo "Installing NVM"
echo "************************************************************"
curl -o- "https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh" | bash

echo "************************************************************"
echo "NVM install complete"
echo ""
echo "Visit https://github.com/creationix/nvm for instructions to"
echo "install Node.js."
echo ""
echo "Visit https://nodejs.org to determine which version to install"
echo "************************************************************"
