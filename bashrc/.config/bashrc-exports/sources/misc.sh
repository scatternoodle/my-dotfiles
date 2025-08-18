# fix pkg-config not being able to find some libraries, like ALSA
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

alias zen='flatpak run app.zen_browser.zen -P & disown'
alias dotfiles='tmux new-session -s dotfiles -c "${HOME}/dotfiles"'

function fix_downloads() {
	mkdir -p ~/Downloads && \
	chown "$USER":"$USER" ~/Downloads && \
	chmod 700 ~/Downloads && \
	xdg-user-dirs-update && \
	xdg-user-dir DOWNLOAD
}

# while we're on ubuntu or debian-based distros, this is a sensible default
# disable this if using pyenv, however
alias python="python3"
