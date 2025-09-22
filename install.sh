#!/bin/bash
set -e

if [ $(id -u) -ne 0 ]; then
  echo 'Please run this script as root!'
  exit 1
fi

cp -rf ./s2a/ /opt/s2a
cp -f ./s2a.svg /usr/share/pixmaps/
cp -f ./S2A.desktop /usr/share/applications/
ln -sf /opt/s2a/s2a /usr/bin/s2a

echo 'Installed! You must install qbootctl to get it work.'
exit 0
