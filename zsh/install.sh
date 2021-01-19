#!/bin/bash

src=$(pwd)
dest=$HOME

file1='.zshrc'
file2='.zsh_plugins'
file3='.zsh_aliases'

if [ ! -d $HOME/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.8.0
fi

if [ ! -f '/usr/local/bin/antibody' ]; then
  curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
fi

ln -s $src/$file1 $dest/$file1
ln -s $src/$file2 $dest/$file2
ln -s $src/$file3 $dest/$file3
