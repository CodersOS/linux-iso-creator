#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

chroot "$chroot" "/iso-creation/02_Cleanup_the_ChRoot_Environment.sh"

echo "02 > unmounting /dev"
umount "$chroot/dev"