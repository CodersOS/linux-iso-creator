#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

apt-get -y install syslinux squashfs-tools genisoimage

# download the files for the iso
(
  cd "$image"
  wget "$image_download" -O /tmp/temp.zip
  unzip /tmp/temp.zip
  rm /tmp/temp.zip
)
