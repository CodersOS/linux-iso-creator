#!/bin/bash
set -e

cd "`dirname \"$0\"`"
source "configuration.sh"

echo "command > creating the vmlinuz and initrd files"

for file in /boot/vmlinuz-**.**.**-**-generic
do
  cp "$file" "$image/casper/vmlinuz"
done

for file in /boot/initrd.img-**.**.**-**-generic
do
  cp "$file" "$image/casper/initrd.lz"
done