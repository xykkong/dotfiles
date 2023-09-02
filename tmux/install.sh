#!/bin/bash

src=$(pwd)
dest=$HOME

# file1='.tmux.conf'
# file2='.tmux.conf.local'

# ln -s $src/$file1 $dest/$file1
# ln -s $src/$file2 $dest/$file2

files=("tmux.conf")

mkdir -p $dest

for file in ${files[@]}; do
  ln -fs $src/$file $dest/.$file
done
