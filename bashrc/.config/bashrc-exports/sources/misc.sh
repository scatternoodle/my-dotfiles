# fix pkg-config not being able to find some libraries, like ALSA
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

alias zen='flatpak run app.zen_browser.zen -P & disown'

alias brewfullup='brew update && brew outdated && brew upgrade && brew cleanup'
function sysupdate() {
	sudo apt update && DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y && \
		sudo apt autoremove -y && \
		flatpak update --noninteractive && \
		brew update && brew upgrade && brew cleanup && \
		cargo install-update --all
}
