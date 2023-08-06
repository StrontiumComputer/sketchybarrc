#!/bin/bash

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

sketchybar --set $NAME icon="􀉉 $(date '+%a %b %d ')" label="$(date '+%I:%M %p')"