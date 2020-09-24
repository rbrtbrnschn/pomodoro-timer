#!/bin/bash
sudo apt-get install -y libnotify-bin screen

$PWD/uninstall.sh
cp -a $PWD "/usr/local/bin/pomodoro-timer"
cp -a $PWD/pomodoro "/usr/local/bin/pomodoro"
cp -a $PWD/pomodoro_timer "/usr/local/bin/pomodoro_timer"

BOO=$(cat $HOME/.bashrc | grep dotenv)
if [ "${#BOO}" -eq 0 ]; then

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

echo
echo "#Installation Complete#"
echo "For 'pomodoro' to work, please close all terminal windows."
echo "You may kiss the bride."
