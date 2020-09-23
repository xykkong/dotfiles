#!/bin/bash

src=$(pwd)
dest=$HOME

file1='.tmux.conf'
file2='.tmux.conf.local'

ln -s $repo/$file1 $dest/$file1
ln -s $repo/$file2 $dest/$file2
