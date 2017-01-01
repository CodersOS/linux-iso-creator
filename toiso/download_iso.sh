#!/bin/bash
set -e

here="`dirname \"$0\"`"
cd "$here"
source "configuration.sh"

echo "command > download iso content"

apt-get -y -qq install unzip

mkdir -p "$image"
echo -n "downloading iso image from $image_download ... "
wget -qq --no-check-certificate "$image_download" -O /tmp/temp.zip
echo "ok"
mkdir -p /tmp/image_unzipped
(
  cd /tmp/image_unzipped
  unzip /tmp/temp.zip
  rm /tmp/temp.zip
  echo "trying locations for casper to find files in sub-folders"
  casper="`find . | grep -E '/casper$' | head -n1 `"
  if [ -z "$casper" ]
  then
    echo "ERROR: I expected the \"casper\" directory to be present."
  fi
  root="`dirname \"$casper\"`"
  echo "The files are in \"$root\""
  cp -r "$root"/* "$image/"
  rm -rf /tmp/image_unzipped
)

apt-get -y -qq purge unzip