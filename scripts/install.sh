#!/bin/bash

set +e
mkdir -p ~/.config/i3/plugins/
cp config-files/floating-window.conf ~/.config/i3/plugins/

mkdir -p ~/.floating-window-editor/
cp scripts/floating-window.sh ~/.floating-window-editor/
chmod +x ~/.floating-window-editor/floating-window.sh
