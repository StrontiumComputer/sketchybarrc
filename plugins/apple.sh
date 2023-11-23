#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=
  icon.font="Hack Nerd Font:Bold:23.0"
  icon.color=0xfff5a97f
  icon.padding_right=10
  icon.padding_left=10
  padding_right=15
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  popup.height=35
  background.height=28
  background.color=0xff2b4059
  background.corner_radius=25
)

apple_prefs=(
  icon=
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon=󰌾
  label="Lock Screen"
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

apple_off=(
  icon=⏻
  label="Shut Down"
  click_script="osascript -e 'tell app \"System Events\" to shut down' $POPUP_OFF"
)
sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}" \
                                                \
           --add item apple.off popup.apple.logo    \
           --set apple.off "${apple_off[@]}"        \
