#!/bin/bash

STOCKROM="$PORT_ROOT/d955/stockrom/"

cd $STOCKROM

echo "Download missing files..."
wget -q http://roms.gerrett84.de/d955/miui/patchrom/jb42/missing_files2.zip

if [ ! -s "missing_files2.zip" ];then
    echo "Download failed, try again later"
    exit 8
fi

echo "unzipping.."
unzip -q -o missing_files2.zip

echo "remove zip"
rm *.zip

echo "finished"


