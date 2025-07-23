function sysupdate() {
	sudo apt update && DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y && \
		sudo apt autoremove -y && \
		sudo snap refresh && \
		flatpak update --noninteractive && \
		brew update && brew upgrade && brew cleanup && \
		cargo install-update --all && \
		npm update --global
}
