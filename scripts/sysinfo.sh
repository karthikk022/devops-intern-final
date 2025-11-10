#!/usr/bin/env bash
set -euo pipefail

echo "User       : $(whoami)"
echo "Date       : $(date)"
echo "Disk usage :"
df -h | awk 'NR==1 || /^\//'
