#!/bin/bash
#
# See https://help.ubuntu.com/community/LiveCDCustomizationFromScratch#Make_the_ChRoot_Environment
#
#
set -e
source "`dirname \"$0\"`/configuration.sh"

# install required packages
apt-get -qq update
apt-get -y -qq install debootstrap

# create the folder for the iso
mkdir -p "$work"
cd "$work"

# create the file system
mkdir -p "$chroot"
sudo debootstrap --arch="$ARCH" "$RELEASE" "$chroot"

# prepare the os
mount --bind /dev "$chroot/dev"

cp /etc/hosts "$chroot/etc/hosts"
cp /etc/resolv.conf "$chroot/etc/resolv.conf"

# update the chroot environment
cp -r "$chroot_update/"* "$chroot"

chroot chroot "/iso-creation/01_Make_the_ChRoot_Environment.sh"



