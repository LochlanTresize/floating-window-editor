#!/bin/bash

## open floating terminal in attached tmux session
# filetype handler should be invoked here using i3 menu
dunstify -r 4101 "Executing floating-window start script"

alacritty --class floating-editor -e tmux new-session -A -c /tmp -s "floating editor" "nvim /tmp/floating-window/floating-window-content.md"

# i3-msg floating enable

dunstify -r 4101 "Floating-editor closed"


