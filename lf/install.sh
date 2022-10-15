#!/bin/bash

src=$(pwd)
dest=$HOME/.config/lf/

files=("lfrc" "icons_export")

mkdir -p $dest
for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
