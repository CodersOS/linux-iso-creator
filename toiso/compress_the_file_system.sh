#!/bin/bash
set -e

cd "`dirname \"$0\"`"
source "configuration.sh"

echo "command > compress the file system"

mksquashfs / "$image/casper/filesystem.squashfs" -ef ./exclude.txt -wildcards 

printf $(sudo du -sx --block-size=1 / | cut -f1) > "$image/casper/filesystem.size"