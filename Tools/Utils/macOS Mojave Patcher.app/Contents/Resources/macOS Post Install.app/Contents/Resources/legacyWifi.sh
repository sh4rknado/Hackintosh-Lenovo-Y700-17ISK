#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/AirPortAtheros40.kext" "$volumePath/System/Library/Extensions/IO80211Family.kext/Contents/PlugIns"
chmod -R 755 "$volumePath/System/Library/Extensions/IO80211Family.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/IO80211Family.kext"
