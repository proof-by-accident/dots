#!/bin/bash

ACTIVESINK=$(pacmd list-sinks | grep \* | awk '{print $3}')
ACTIVEVOLUME=$(pactl list sinks | grep '^[[:space:]]Volume:' | \head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
case "$1" in
    raise)
	if [ $ACTIVEVOLUME -lt 154 ]
	   then
	       pactl set-sink-volume "$ACTIVESINK" +5%
	fi
	;;

    
    lower)
	pactl set-sink-volume "$ACTIVESINK" -5%
	;;
    mute)
	pactl set-sink-mute "$ACTIVESINK" toggle
	;;
    esac
