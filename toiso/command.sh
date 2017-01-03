#!/bin/bash
# using 1>&2 to pipe the stdout to stderr, so we can pipe the image out on stdout
1>&2 set -e

1>&2 cd "`dirname \"$0\"`"
1>&2 source "configuration.sh"

1>&2 echo "command > remove files"
1>&2 ./clean_up.sh
#1>&2 ./remove_linux_kernels.sh

1>&2 echo "command > populate iso"
#1>&2 ./vmlinuz_and_initrd.sh
1>&2 ./create_manifest.sh
1>&2 ./compress_the_file_system.sh
1>&2 ./calculate_md5.sh
1>&2 ./create_iso_image_for_a_livecd.sh

if [ "$1" != "-q" ]
then
  ./iso.sh
fi
