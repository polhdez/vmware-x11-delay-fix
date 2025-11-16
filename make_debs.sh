#!/bin/sh

set eu

# Set up build deps
sudo apt-get install devscripts
sudo apt-get build-dep libdrm2

rm -rf build
mkdir -p build
cd build

# Get the source
apt source libdrm2
cd libdrm-2*

# Patch
patch -p1 -i ../../vmware_drm_delay_fix.patch
dch -n "Applied VMWare patch"

# Build
debuild -b -uc -us
