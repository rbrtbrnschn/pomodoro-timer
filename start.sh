#!/bin/bash
NEED_INPUT=0
DEFAULT=25
MINUTES=2

while getopts ":q" OPTION; do
	case $OPTION in
		q)
		NEED_INPUT=1
		;;
	esac
done

if [ "$NEED_INPUT" == 0 ]; then
	read -p "Set timer for the following amount of minutes #" MINUTES
	if [ "$MINUTES" = "" ]; then MINUTES=$DEFAULT; fi
fi

export MINUTES="$MINUTES"
#sh -c "echo $$; exec $SRC/timer.sh &"
exec $SRC/timer.sh &
