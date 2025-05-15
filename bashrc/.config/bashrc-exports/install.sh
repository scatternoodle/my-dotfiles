#!/usr/bin/bash

install_path="${HOME}"/.config/bashrc-exports
rc_file="${HOME}"/.bashrc
rc_script='
############ bashrc-exports BEGIN ############
source_dir=${HOME}/.config/bashrc-exports/sources
if [ -d "${source_dir}" ]; then
    for file in "${source_dir}"/*.sh; do
	[ -r "${file}" ] && source "${file}"
    done
fi
############ bashrc-exports END ##############
'

if [ ! -d "${install_path}" ]; then
	git clone https://github.com/scatternoodle/bashrc-exports "${install_path}" ||
		{ echo "Fatal: could not clone repo."; exit 1; }
fi

if ! grep -q "############ bashrc-exports BEGIN ############" "${rc_file}"; then
	echo "${rc_script}" >> "${rc_file}" ||
		{ echo "Fatal: unable to append to bashrc at ${rc_file}"; exit 1; }
fi

source "${rc_file}"
