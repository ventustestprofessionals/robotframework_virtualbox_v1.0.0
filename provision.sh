#!/bin/bash
echo "########################"
echo "# Install net.tools     "
echo "########################"
sudo apt-get -y install net-tools
echo "########################"
echo "# PIP and python        "
echo "########################"
sudo apt-get -y install net-tools
sudo apt-get -y install python
echo "########################"
echo "# Update machine        "
echo "########################"
apt-get update
sudo apt install -y python3-pip
echo "########################"
echo "# install robotframework"
echo "########################"
pip install robotframework
robot --version
echo "############################"
echo "# install visual studio code"
echo "############################"
sudo mv /etc/apt/preferences.d/nosnap.pref ~
sudo apt install snapd
sudo snap install --classic code
echo "############################"
echo "# install robotframework-lsp"
echo "############################"
sudo code --install-extension robocorp.robotframework-lsp --no-sandbox --user-data-dir=/root/.vscode
sudo code folder /vagrantsync/examples --no-sandbox --user-data-dir=/root/.vscode



