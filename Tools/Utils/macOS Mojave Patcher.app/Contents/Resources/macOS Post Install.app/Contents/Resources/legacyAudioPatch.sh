#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/AppleHDA.kext" "$volumePath/System/Library/Extensions/"
chmod -R 755 "$volumePath/System/Library/Extensions/AppleHDA.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/AppleHDA.kext"
