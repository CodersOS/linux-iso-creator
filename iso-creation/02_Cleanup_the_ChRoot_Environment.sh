#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

chroot "$chroot" "/iso-creation/02_Cleanup_the_ChRoot_Environment.sh"

sudo umount "$chroot/dev"