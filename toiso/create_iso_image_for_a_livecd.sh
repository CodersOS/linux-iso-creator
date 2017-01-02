#!/bin/bash
set -e

cd "`dirname \"$0\"`"
source "configuration.sh"

echo "command > create iso image"

apt-get -y -qq install genisoimage

(
  cd "$image"
  mkisofs -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o "$iso_image" .
)

