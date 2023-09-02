#!/bin/bash

src=$(pwd)
dest=$HOME

file1='gitconfig'
file2='gitalias'
file3='gitignore_global'


ln -fs $src/$file1 $dest/.$file1
ln -fs $src/$file2 $dest/.$file2
ln -fs $src/$file3 $dest/.$file3
