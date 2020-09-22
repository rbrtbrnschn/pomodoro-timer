#!/bin/bash
BREAK=5
COUNTER=1

while true; do
	if [ "$COUNTER" -eq 1 ]; then 
		echo "PID: $$"
		echo "To stop the timer use 'kill $$'"
	fi
	COUNTER=$((COUNTER += 1))

	sleep $(($MINUTES *60))
	notify-send Pomodoro-Timer "`echo "$MINUTES min are over - take a break."`"
	# Break Over
	sleep $(($BREAK *60))
	notify-send Pomodoro-Timer "`echo "Break is over. See you in $MINUTES min."`"
done

