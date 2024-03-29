#!/bin/bash

src=$(pwd)
dest=$HOME/.config/nvim

files=("init.vim" "maps.vim" "plug.vim" "coc-settings.json" "plugins_conf.vim")

mkdir -p $dest

for file in ${files[@]}; do
  ln -fs $src/$file $dest/$file
done
