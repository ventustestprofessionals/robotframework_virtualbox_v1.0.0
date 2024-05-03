#!/bin/bash

echo "########################"
echo "# Install net-tools"
echo "########################"
sudo apt-get -y install net-tools

echo "########################"
echo "# Install python-pip"
echo "########################"
sudo apt -y install python3-pip

echo "########################"
echo "# PIP Install robotframework"
echo "########################"
pip install robotframework