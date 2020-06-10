#!/bin/bash

shuf -n 1 $HOME/.local/bin/scripts/betterlock/short_lockscreen_quotes | xargs -d '\n' $HOME/.local/bin/scripts/betterlock/betterlockscreen -l dim -t

