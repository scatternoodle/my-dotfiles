# alias twfa='cd "${WFS_ADMIN_CLIENTS_ROOT}" && tmux new -s wfadmin && cd -'
alias twfa="tmux new-session -c ${WFS_ADMIN_CLIENTS_ROOT} -s wfadmin"

wfa() { find "${WFS_ADMIN_CLIENTS_ROOT}" -type f |
	fzf --prompt="Select admin client >" |
	xargs -I {} bash -c 'javaws "{}" & disown'
}

export WFSINT_ROOT="${HOME}/workspace/github.com/scatternoodle/wfsint/"
alias wfsint="tmux new-session -c ${WFSINT_ROOT} -s wfsint"
