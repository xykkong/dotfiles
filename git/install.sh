#!/bin/bash

src=$(pwd)
dest=$HOME

files=(
  "gitconfig"
  "gitalias"
  "gitignore_global"
)

for file in "${files[@]}"; do
  ln -fs "$src/$file" "$dest/.$file"
  echo "Linked $src/$file → $dest/.$file"
done
