# Floating-window editor

A script for X11 and i3 that opens a floating neovim window to edit text in. On window close the text is pasted at the cursors last position in the target window (the window where the script is invoked).

This, for example, allows emails, texts and jupyter notebooks to be edited with neovim quickly and easily.

The script can be invoked with text highlighted. This text will be available in the floating editor and the resulting written text will paste over what you have highlighted.

## Install
Clone this repo
```bash
git clone **
```
and run
```
```bash
scripts/install.sh
```
Then add
```bash
include ~/.config/i3/plugins/floating-window-config.conf
```
to your i3-config.

The default mapping to invoke the script is `mod+shift+a`. To change this mapping edit
```bash
~/.config/i3/plugins/floating-window-config.conf
```
accordingly.
