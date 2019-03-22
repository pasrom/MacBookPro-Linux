#!/bin/bash

KERNEL_DIR="linux-rt-devel"
GIT_TAG="v4.19.25-rt16"

if [ ! -d ${KERNEL_DIR} ] ; then
  git clone https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/ ${KERNEL_DIR}
fi

cd ${KERNEL_DIR}
git checkout ${GIT_TAG}

make mrproper
./scripts/kconfig/merge_config.sh arch/x86/configs/x86_64_defconfig ../config/macbook-pro-defconfig
time make -j $(nproc) bindeb-pkg

cd ..
# example install
sudo dpkg -i linux-headers-4.19.25-rt16_4.19.25-rt16-1_amd64.deb 
sudo dpkg -i linux-image-4.19.25-rt16_4.19.25-rt16-1_amd64.deb 
sudo update-grub2

