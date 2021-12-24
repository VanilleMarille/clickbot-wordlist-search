#!/bin/bash

if [ $1 = bar ]; then
	xdotool mousemove 467 15
	xdotool click 1
	sleep 3
	xdotool key Control_L+l
	sleep 1
fi

if [ $1 = click ]; then
	xdotool key Return
	sleep 10
	xdotool mousemove 262 303
	xdotool click 1
fi
