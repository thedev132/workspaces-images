#!/usr/bin/env bash
set -ex
ARCH=$(arch | sed 's/aarch64/arm64/g' | sed 's/x86_64/amd64/g')




# Signal only releases its desktop app under the xenial release, however it is compatible with all versions of Debian and Ubuntu that we support.
wget https://github.com/dennisameling/Signal-Desktop/releases/download/v6.2.0/signal-desktop-unofficial_6.2.0_arm64.deb

apt-get install -y ./signal-desktop-unofficial_6.2.0_arm64.deb
cp /usr/share/applications/signal-desktop.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/signal-desktop.desktop
