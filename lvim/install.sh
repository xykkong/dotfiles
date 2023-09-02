#!/bin/bash

src=$(pwd)
dest=$HOME/.config/lvim

files=("config.lua" "lua")

mkdir -p $dest

for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
  echo "Symbolic Link created $dest/$file -> $src/$file"
done

