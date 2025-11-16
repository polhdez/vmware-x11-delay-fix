# Fix for the startup delay on X11 using KDE Plasma on VMWare (possibly others too)
Patch based on this commit https://github.com/shoffmeister/drm/commit/db85c9dc0553414ca77d5442fb7c203f550f267a

This script builds Ubuntu deb packages patching the source code of the latest libdrm2.

You need to install the libdrm2 and libdrm-common debs and mark them as hold so they dont get overwritten. If there's a new libdrm2 version this script will generate patched ones from the latest source packages.

In releases you can get the prebuilt patched packages for Ubuntu 24.04.

