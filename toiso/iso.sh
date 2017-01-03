#!/bin/bash
set -e

cd "`dirname \"$0\"`"
source configuration.sh

cat "$iso_image"
