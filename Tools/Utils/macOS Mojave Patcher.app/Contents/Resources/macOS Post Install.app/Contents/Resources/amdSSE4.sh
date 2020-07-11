#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/AAAMouSSE.kext" "$volumePath/Library/Extensions/"
chmod -R 755 "$volumePath/Library/Extensions/AAAMouSSE.kext"
chown -R 0:0 "$volumePath/Library/Extensions/AAAMouSSE.kext"
