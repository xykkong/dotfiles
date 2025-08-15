#!/bin/bash

src=$(pwd)
dest=$HOME

files=("zshrc" "zsh_aliases" "zimrc")

for file in ${files[@]}; do
  ln -fs $src/$file $dest/.$file
  echo "Linked $src/$file → $dest/.$file"
done
