#!/bin/bash

src=$(pwd)
dest=$HOME

file1='.gitconfig'
file2='.gitconfig_alias'
file3='.gitignore_global'


ln -s $src/$file1 $dest/$file1
ln -s $src/$file2 $dest/$file2
ln -s $src/$file3 $dest/$file3
