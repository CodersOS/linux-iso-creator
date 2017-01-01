#!/bin/bash
#
# See https://help.ubuntu.com/community/LiveCDCustomizationFromScratch#Make_the_ChRoot_Environment
#
#
set -e
source "`dirname \"$0\"`/configuration.sh"

echo "01 > install required packages"
apt-get -qq update
apt-get -y -qq install debootstrap

echo "01 > create the folder for the iso"
mkdir -p "$work"
cd "$work"

echo "01 > create the file system"
mkdir -p "$chroot"
if ! debootstrap --arch="$ARCH" "$RELEASE" "$chroot" 
then
  echo "01 > debootstrap failed"
  cat "$chroot/debootstrap/debootstrap.log"
  exit 1
fi

echo "01 > prepare the os"
mount --bind /dev "$chroot/dev"

cp /etc/hosts "$chroot/etc/hosts"
cp /etc/resolv.conf "$chroot/etc/resolv.conf"

echo "01 > update the chroot environment"
cp -r "$chroot_update/"* "$chroot"

chroot chroot "/iso-creation/01_Make_the_ChRoot_Environment.sh"



