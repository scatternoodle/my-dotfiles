function sysupdate() {
	sudo apt update && DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y && \
		sudo apt autoremove -y && \
		sudo snap refresh && \
		flatpak update --noninteractive && \
		rustup update && \
		cargo install-update --all && \
		npm update --global && \
		go install github.com/mithrandie/csvq@latest && \
		go install github.com/spf13/cobra-cli@latest
}
