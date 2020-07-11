#!/bin/sh
volumePath=$1
resourcePath=$2
rm -R "$volumePath/System/Library/UserEventPlugins/com.apple.telemetry.plugin"
