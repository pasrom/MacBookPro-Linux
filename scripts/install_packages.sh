#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y git chromium htop caja-open-terminal

# wlan driver BCM4360
sudo apt-get install -y linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') \
  linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') \
  broadcom-sta-dkms

# sensors
sudo apt install -y lm-sensors hddtemp mate-sensors-applet mbpfan
sudo cp config/mbpfan.conf /etc/mbpfan.conf
sudo systemctl restart mbpfan.service

# kernel
sudo apt install -y bison flex libelf-dev libssl-dev debhelper dh-virtualenv \
  build-essential libssl-dev libncurses5-dev bison flex bc qt5-default \
  qt5-qmake qtbase5-dev qtbase5-dev-tools pkg-config ccache

if [[ ":$PATH:" == *":/usr/lib/ccache:"* ]]; then
  echo "Your path is correctly set"
else
  echo 'export PATH=/usr/lib/ccache:$PATH' >> ~/.bashrc 
fi
