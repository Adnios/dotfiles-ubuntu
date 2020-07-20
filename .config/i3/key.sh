#!/bin/sh

# This script is called on startup.

# Increase key speed via a rate change
xset r rate 300 50

# Map the caps lock key to control...
setxkbmap -layout us -option ctrl:nocaps

# But when it is pressed only once, treat it as escape
xcape -e 'Control_L=Escape'

# Map simultaneous press of both shifts to capslock
# setxkbmap -option "shift:both_capslock"
