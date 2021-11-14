#!/bin/bash

src=$(pwd)
dest=$HOME

file1='.zshrc'

if [ ! -d $HOME/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.8.0
fi

ln -s $src/$file1 $dest/$file1
