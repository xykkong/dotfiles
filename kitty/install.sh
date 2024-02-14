#!/bin/bash

src=$(pwd)
dest=$HOME/.config/kitty

files=("cursor.conf" "font.conf" "keybinds.conf" "kitty.conf" "macos.conf" "mouse.conf" "performance.conf" "session.conf" "settings.conf" "shell.conf" "tab_bar.py" "tab_bar.conf" "vi-mode.lua")
uis=("cattpuccin_macchiato.conf" "sonokai.conf")

mkdir -p $dest
for file in ${files[@]}; do
	ln -fs $src/$file $dest/$file
done

mkdir -p $dest/ui
for file in ${uis[@]}; do
	ln -fs $src/ui/$file $dest/ui/$file
done
