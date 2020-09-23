#!/bin/bash

if [ -f $PWD/.env ]; then
	for VAR in $(cat $PWD/.env | xargs); do
		export $VAR
	done
fi
