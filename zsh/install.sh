#!/bin/bash

repo=$(pwd)

file1='.zshrc'
file2='.zsh_plugins.txt'

if [! -d '~/asdf' ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
fi

if [ ! -f '/usr/local/bin/antibody' ]; then
  curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
fi

ln -s $repo/$file1 ~/$file1
ln -s $repo/$file2 ~/$file2

