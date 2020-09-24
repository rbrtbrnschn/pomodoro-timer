#!/bin/bash

BOO=$(cat $HOME/.bashrc | grep dotenv)
if [ "${#BOO[@]}" -eq 0 ]; then

echo -e "
# Setup .env
function dotenv {
	if [ -f \"\$PWD/.env\" ]; then
		for VAR in \$(cat \"\$PWD/.env\" | xargs); do
			export \$VAR
		done
	fi
}
export -f dotenv
" >> $HOME/.bashrc
echo "Added dotenv() to $HOME/.bashrc"
fi
