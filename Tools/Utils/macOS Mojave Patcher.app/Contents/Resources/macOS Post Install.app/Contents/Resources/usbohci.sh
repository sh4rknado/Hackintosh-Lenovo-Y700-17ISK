#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/IOUSBHostFamily.kext" "$volumePath/System/Library/Extensions"
#cp -R "$resourcePath/AppleUSBACM.kext" "$volumePath/System/Library/Extensions/"
chmod -R 755 "$volumePath/System/Library/Extensions/IOUSBHostFamily.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/IOUSBHostFamily.kext"
#chmod -R 755 "$volumePath/System/Library/Extensions/AppleUSBACM.kext"
#chown -R 0:0 "$volumePath/System/Library/Extensions/AppleUSBACM.kext"
