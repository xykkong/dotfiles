#!/bin/bash

src=$(pwd)
dest=$HOME

file1='ideavimrc'

ln -s $src/$file1 $dest/.$file1

echo "Symlink created: $dest/.$file1 -> $src/$file1"
