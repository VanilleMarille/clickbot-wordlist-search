#!/bin/bash

function click {
	sleep 0.2
	xdotool mousedown 1
	sleep 0.2
	xdotool mouseup 1
	sleep 3
}

if [ $1 = bar ]; then
	xdotool mousemove 478 15
	click
	xdotool mousemove 560 40
	click 
fi

if [ $1 = click ]; then
	xdotool key Return
	sleep 10
	xdotool mousemove 262 303
	click 
fi

if [ $1 = kill ]; then
	killall brave
fi

if [ $1 = start ]; then
	brave &
fi
