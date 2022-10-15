#!/bin/bash

src=$(pwd)
dest=$HOME/.config/ripgrep/

files=("ripgreprc")

mkdir -p $dest
for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
