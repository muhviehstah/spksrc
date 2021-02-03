#!/bin/bash
#set -x

#Vars
export HISTFILESIZE=10000
PACKAGES=/spksrc/mod/package.list

#Copy Files
cp -fv /spksrc/mod/vimrc /root/.vimrc
cp -fv /etc/apt/sources.list /spksrc/mod/sources.list.old
cp -fv /spksrc/mod/sources.list.mod /etc/apt/sources.list

#Packages
apt update
apt -y full-upgrade

cat $PACKAGES|xargs apt install -y

apt -y install vim bash-completion git man-db manpages manpages-de manpages-de-dev bsdtar bsdcpio libarchive-any-create-perl \
       libarchive13 libarchive-tools libzstd1 zstd libzip4 zlib1g lbzip2 bzip2 libzzip-0-13 \
       gzip lbzip2 lzip minizip lzd p7zip-full plzip pigz pbzip2 p7zip-rar xzip xz-utils liblzma5 pixz \
       apt apt-doc apt-transport-https apt-utils apt-dpkg-ref apt-file apt-venv aptitude aptitude-common aptitude-doc-en


apt update
apt -y full-upgrade
