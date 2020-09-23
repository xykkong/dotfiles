#!/bin/bash

src=$(pwd)
dest=$HOME/.config/nvim

file1='init.vim'
file2='maps.vim'
file3='plug.vim'
file4='coc-settings.json'

mkdir -p $dest

ln -s $src/$file1 $dest/$file1
ln -s $src/$file2 $dest/$file2
ln -s $src/$file3 $dest/$file3
ln -s $src/$file4 $dest/$file4
