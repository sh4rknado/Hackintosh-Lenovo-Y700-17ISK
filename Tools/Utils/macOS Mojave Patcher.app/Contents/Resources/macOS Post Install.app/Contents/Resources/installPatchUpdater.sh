#!/bin/sh
volumePath=$1
resourcePath=$2
if [ ! -d "$volumePath/usr/local/sbin" ]; then
mkdir "$volumePath/usr/local/sbin"
fi
cp "$resourcePath/patchupdaterd" "$volumePath/usr/local/sbin"
cp -R "$resourcePath/Patch Updater.app" "$volumePath/Applications/Utilities/"
cp -R "$resourcePath/Patch Updater Prefpane.prefPane" "$volumePath/Library/PreferencePanes"
cp "$resourcePath/com.dosdude1.PatchUpdater.plist" "$volumePath/Library/LaunchAgents/"
chmod 755 "$volumePath/Library/LaunchAgents/com.dosdude1.PatchUpdater.plist"
chown 0:0 "$volumePath/Library/LaunchAgents/com.dosdude1.PatchUpdater.plist"