# fix pkg-config not being able to find some libraries, like ALSA
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

alias zen='flatpak run app.zen_browser.zen -P & disown'

