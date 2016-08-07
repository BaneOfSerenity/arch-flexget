#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="python2 python2-pip wget"

# install pre-reqs
pacman -Sy --needed $pacman_packages --noconfirm
pip2 install --upgrade setuptools
pip2 install flexget
pip2 install transmissionrpc

wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
chmod a+rx /usr/local/bin/youtube-dl

# call aor script (arch official repo)
# source /root/aur.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
