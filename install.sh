#!/bin/bash
sudo apt-get install -y libnotify-bin

cp -a $PWD "/usr/local/bin/pomodoro-timer"
cp -a $PWD/pomodoro "/usr/local/bin/pomodoro"

echo "Installation Complete"
echo "Run file to start the timer."
