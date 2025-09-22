#!/bin/bash
set -e

if [ $(id -u) -ne 0 ]; then
  echo 'Please run this script as root!'
  exit 1
fi

if [ -d /opt/s2a/ ]; then 
  rm -rf /opt/s2a
fi
if [ -f /usr/share/applications/S2A.desktop ]; then
  rm -rf /usr/share/applications/S2A.desktop
fi
if [ -f /usr/share/pixmaps/s2a.svg ]; then
  rm -rf /usr/share/pixmaps/s2a.svg
fi
if [ -f /usr/bin/s2a ]; then
  rm -rf /usr/bin/s2a
fi

echo 'Uninstalled!'
exit 0
