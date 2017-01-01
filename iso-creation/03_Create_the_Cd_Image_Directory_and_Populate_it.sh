#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

echo "03 > install packages"
apt-get -y install syslinux squashfs-tools genisoimage

echo "03 > download the files for the iso"
(
  cd "$image"
  wget "$image_download" -O /tmp/temp.zip
  unzip /tmp/temp.zip
  rm /tmp/temp.zip
)
