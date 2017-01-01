#!/bin/bash
set -e

source "`dirname \"$0\"`/configuration.sh"

(
  cd "$image"
  find . -type f -print0 | xargs -0 md5sum | grep -v "\./md5sum.txt" > md5sum.txt
)

