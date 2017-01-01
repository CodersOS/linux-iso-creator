#!/bin/bash
set -e

cd "`dirname \"$0\"`"

./01_Make_the_ChRoot_Environment.sh
# ./02_Cleanup_the_ChRoot_Environment.sh
./03_Create_the_Cd_Image_Directory_and_Populate_it.sh
