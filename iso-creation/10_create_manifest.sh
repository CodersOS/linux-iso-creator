#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

echo "10 > create manifest"
chroot chroot dpkg-query -W --showformat='${Package} ${Version}\n' | tee "$image/casper/filesystem.manifest"
cp -v "$image/casper/filesystem.manifest" "$image/casper/filesystem.manifest-desktop"

for i in $REMOVE 
do
  sed -i "/${i}/d" "$image/casper/filesystem.manifest-desktop"
done
