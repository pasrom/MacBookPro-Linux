#!/bin/sh

sudo apt-get update && apt-get upgrade -y

ssudo apt-get install git chromium htop caja-open-terminal

# wlan driver BCM4360
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

# sensors
sudo apt install lm-sensors hddtemp mate-sensors-applet mbpfan
sudo cp ../config/mbpfan.conf /etc/mbpfan.conf
sudo systemctl restart mbpfan.service

# kernel
sudo apt install bison flex libelf-dev libssl-dev debhelper dh-virtualenv build-essential libssl-dev libncurses5-dev bison flex qt5-default qt5-qmake qtbase5-dev qtbase5-dev-tools pkg-config ccache

echo 'export PATH=/usr/lib/ccache:$PATH' >> ~/.bashrc 

