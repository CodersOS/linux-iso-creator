#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

(
  cd "$image"
  mkisofs -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o "$iso_image" .
)

