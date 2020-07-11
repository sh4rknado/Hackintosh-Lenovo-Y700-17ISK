#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/IOUSBFamily.kext" "$volumePath/System/Library/Extensions"
chmod -R 755 "$volumePath/System/Library/Extensions/IOUSBFamily.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/IOUSBFamily.kext"

