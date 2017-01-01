#!/bin/bash


1>&2 set -e

1>&2 cd "`dirname \"$0\"`"
1>&2 source "configuration.sh"

1>&2 ./02_Cleanup_the_ChRoot_Environment.sh
1>&2 ./10_create_manifest.sh
1>&2 ./11_Calculate_MD5.sh
1>&2 ./12_Create_ISO_Image_for_a_LiveCD.sh

cat "$iso_image"