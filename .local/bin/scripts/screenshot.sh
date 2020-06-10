#!/bin/bash

DIRECTORY=$HOME/Pictures/screenshots
if [ -d "$DIRECTORY" ]; then
    scrot -q 100 "$DIRECTORY/%Y-%m-%d-%s_$wx$h.png"

else
    mkdir -p $HOME/Pictures/screenshots
    scrot -q 100 "$DIRECTORY/%Y-%m-%d-%s_$wx$h.png"
fi

    
