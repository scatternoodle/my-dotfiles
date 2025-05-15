# General aliases and functions for managing tmux.
#
# Other scripts in this repo use tmux incidentally for other purposes, but
# this script is reserved for commands focused on using/configuring tmux and
# orchestrating sessions.
tmn() { tmux new-session -c "${1}" -s "${2}" 'nvim' ';' new-window; }
tmk() { tmux kill-session -t "${1}"; }
alias tmks='tmux kill-server'
alias tml='tmux ls'
alias tma='tmux a'
