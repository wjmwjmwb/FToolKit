#!/bin/bash

buildNumber=$(/FToolKit.podspec -c "Print CFBundleVersion" "$INFOPLIST_FILE")

buildNumber=$(($buildNumber + 1))

/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "$INFOPLIST_FILE"
