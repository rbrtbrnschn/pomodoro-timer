#!/bin/bash
sudo apt-get install -y libnotify-bin screen

cp -a $PWD "/usr/local/bin/pomodoro-timer"
cp -a $PWD/pomodoro "/usr/local/bin/pomodoro"
cp -a $PWD/pomodoro_timer "/usr/local/bin/pomodoro_timer"

#echo -e $POMODORO >> $HOME/.bashrc
#source $HOME/.bashrc
echo "Installation Complete"
echo "You may have to 'source \$HOME/.bashrc'"
