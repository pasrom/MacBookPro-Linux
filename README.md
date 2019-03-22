# MacBookPro-Linux

Running Linux RT on a MacBookPro Retina late 2013

This repository is based on debian-buster installed on a usb-stick as is described [here](https://afterecho.uk/blog/installing-debian-linux-onto-an-external-usb-drive-for-mac.html). As desktop environment MATE is used.
The kernel is configured like it's done [here](https://wiki.gentoo.org/wiki/Apple_Macbook_Pro_Retina_(early_2013)#Kernel), but for the kernel version 4.19.25.
First install the packages with the `install_packages.sh` script. After that the `build_kernel.sh` script can be run.