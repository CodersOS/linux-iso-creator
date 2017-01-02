#!/bin/bash
set -e 

echo "command > clean up"

apt-get clean

rm -rf /tmp/*
rm -rf /iso/casper/filesystem.*
