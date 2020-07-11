#!/bin/sh
volumePath=$1
resourcePath=$2
csrutil disable
cp -R "$resourcePath/LegacyUSBInjector.kext" "$volumePath/Library/Extensions/"
chown -R 0:0 "$volumePath/Library/Extensions/LegacyUSBInjector.kext"
chmod -R 0755 "$volumePath/Library/Extensions/LegacyUSBInjector.kext"