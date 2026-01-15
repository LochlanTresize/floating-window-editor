# Floating-window editor

A script for X11 and i3 that opens a floating neovim window to edit text in. On window close the text is pasted at the cursors last position in the target window (the window where the script is invoked).

This, for example, allows emails, texts and jupyter notebooks to be edited with neovim quickly and easily.

The script can be invoked with text highlighted. This text will be available in the floating editor and the resulting written text will paste over what you have highlighted. For this feature make sure the cursor on the target window doesn't change while the script is being run.

Currently the script works with alacritty. Other terminal support may appear later.

## Install
Run
```bash
git clone https://github.com/LochlanTresize/floating-window-editor.git
cd floating-window-editor
```
and run
```bash
scripts/install.sh
```
Then add
```bash
include ~/.config/i3/plugins/floating-window.conf
```
to your i3-config.

Now install the following dependencies (I assume you have i3 on X11):
```
xsel xdotool i3-msg
```
Additionally you may install `dunst` and `dunstify` to receive notifications from the script.


The default mapping to invoke the script is `mod+shift+a`. To change this mapping edit
```bash
~/.config/i3/plugins/floating-window-config.conf
```
accordingly.
