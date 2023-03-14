#!/bin/bash


BASE_DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${BASE_DIR}" || exit 10
cp -rf overlays/* /boot/overlays/ || exit 2
cp -rf config.txt /boot/ || exit 2

# Make sure installed packages are properly owned
chown -R ovos:ovos /home/ovos
chmod a=r,u+w,a+X /home/ovos

echo "OVOS Boot Fixed"
