#!/bin/bash
set -e

cd "`dirname \"$0\"`"
source "configuration.sh"

mkdir -p "$image"
(
  cd "$image"
  wget --ca-certificate=/toiso/github.com.pem "$image_download" -O /tmp/temp.zip
  unzip /tmp/temp.zip
  rm /tmp/temp.zip
)
