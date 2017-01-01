#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

echo "11 > calclate md5 sum"

(
  cd "$image"
  find . -type f -print0 | xargs -0 md5sum | grep -v "\./md5sum.txt" > md5sum.txt
)

