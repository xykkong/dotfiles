#!/bin/bash

src=$(pwd)
dest=$HOME/.oh-my-zsh/

files=(".zshrc" "aliases.zsh")

if [ ! -d $HOME/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.9.0
fi

mkdir -p $dest
for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
