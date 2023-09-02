#!/bin/bash

src=$(pwd)
dest=$HOME/.config/kitty

files=("cursor.conf" "font.conf" "kitty.conf" "macos.conf" "mouse.conf" "performance.conf" "session.conf" "settings.conf" "shell.conf" "ui" "tab_bar.py" "tab_bar.conf" "vi-mode.lua")

mkdir -p $dest
for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
