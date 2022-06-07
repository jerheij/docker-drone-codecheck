#!/bin/ash

echo "Files to shellcheck:"
find /drone/src/ -iname "*.sh"

find /git/binaries -iname "*.sh" -exec shellcheck --severity=warning --format=gcc  {} \;