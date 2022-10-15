#!/bin/bash

src=$(pwd)
dest=$HOME/.config/alacritty/

files=("alacritty.yml")

mkdir -p $dest
for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
