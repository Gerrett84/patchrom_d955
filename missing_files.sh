#!/bin/bash

DEVICE="$PORT_ROOT/d955"

cd $DEVICE

echo "Download missing files..."
wget -q http://roms.gerrett84.de/d955/miui/patchrom/kk/missing_files.zip

if [ ! -s "missing_files.zip" ];then
    echo "Download failed, try again later"
    exit 8
fi

echo "unzipping.."
unzip -q -o missing_files.zip

echo "remove zip"
rm *.zip

echo "finished"


