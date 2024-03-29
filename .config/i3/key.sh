#!/bin/sh
sleep 3
# This script is called on startup.

# Increase key speed via a rate change

xset r rate 300 50

# Map the caps lock key to control...
# nvim /etc/default/keyboard
# XKBOPTIONS="ctrl:nocaps"
# setxkbmap -layout us -option ctrl:nocaps
# But when it is pressed only once, treat it as escape

# Map simultaneous press of both shifts to capslock
# setxkbmap -option "shift:both_capslock"

# xcape -e 'Control_L=Escape'
# xcape -e 'Super_L=Control_L|E'
# xcape -e 'Alt_L=Control_L|Q'
