#!/bin/bash
PURPLE='\033[0;35m'
BLUE='\033[0;34m'

echo -e "${PURPLE}SETTING FILE ${BLUE}PERMISSIONS${PURPLE}..."
chmod +x ./lunarclient/opt/lunarclient/lunarclient
chmod +x ./lunarclient/DEBIAN/postinst
echo -e "${PURPLE}BUILDING ${BLUE}PACKAGE${PURPLE}..."
dpkg-deb --build lunarclient
echo -e "${PURPLE}BUILDING REPO FOR ${BLUE}deb"
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key A4243D7091CE53DBF0928B79403448C14FA4B33E -abs -o - Release > Release.gpg
gpg --default-key A4243D7091CE53DBF0928B79403448C14FA4B33E --clearsign -o - Release > InRelease

echo -e "${PURPLE}DONE."