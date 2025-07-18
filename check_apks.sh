#!/bin/bash

REPO_DIR="repo"

echo "Checking APKs in $REPO_DIR..."

for apk in "$REPO_DIR"/*.apk; do
  if [ ! -f "$apk" ]; then
    continue
  fi
  if unzip -l "$apk" | grep -q "AndroidManifest.xml"; then
    echo "VALID APK:   $apk"
  else
    echo "INVALID APK: $apk"
  fi
done