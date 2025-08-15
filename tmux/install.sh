#!/bin/bash

src=$(pwd)
dest=$HOME

files=("tmux.conf")

mkdir -p $dest

for file in ${files[@]}; do
  ln -fs $src/$file $dest/.$file
  echo "Linked $src/$file → $dest/.$file"
done
