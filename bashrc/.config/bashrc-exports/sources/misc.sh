# fix pkg-config not being able to find some libraries, like ALSA
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

alias sysupdate='sudo apt update && DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y && flatpak update --noninteractive'
