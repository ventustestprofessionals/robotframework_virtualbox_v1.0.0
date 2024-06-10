#!/bin/bash
sudo su - vagrant
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
mkdir -p /vagrant/.vscode
sudo chown -R vagrant:vagrant /vagrant/.vscode
runuser -l vagrant -c "code --install-extension robocorp.robotframework-lsp --user-data-dir=/vagrant/.vscode"
cp /vagrantsync/robotframework.desktop /home/vagrant/Desktop
