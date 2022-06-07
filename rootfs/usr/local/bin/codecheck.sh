#!/bin/ash

echo
echo "Files to shellcheck:"
echo

find /drone/src/ -iname "*.sh"

echo
echo "Running shellchecks..."
echo

find /drone/src/ -iname "*.sh" -exec shellcheck --severity=warning {} \;