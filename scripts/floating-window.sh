#!/bin/bash
## open floating terminal in attached tmux session
# TODO: filetype handler should be invoked here using dmenu
DUNST_PORT="4101"

dunstify -r $DUNST_PORT "Executing floating-window start script"

WIN_ID=$(xdotool getwindowfocus)
xsel --clipboard --output | xsel --input --secondary
xsel --clipboard --clear 


xdotool key ctrl+c
xsel --clipboard --output > /tmp/floating-window/floating-window-content.md

alacritty --class floating-editor -e tmux new-session -A -c /tmp -s "_floating-editor" "nvim /tmp/floating-window/floating-window-content.md"

dunstify -r $DUNST_PORT "Floating-editor closed"

# Notes:
#  Can add xdottool --release if xdotool not running on keypress
#  (see https://i3wm.org/docs/userguide.html#keybindings)
#  Make sure --release is placed with bindsym in i3 config or else
#  this command won't run

i3-msg "[id=$WIN_ID] focus"

cat /tmp/floating-window/floating-window-content.md | xsel --input --clipboard
xdotool key ctrl+v

# give the user back their previous copy and clean up
xsel --secondary --output | xsel --input --clipboard
xsel --secondary --clear
echo "" > /tmp/floating-window/floating-window-content.md
