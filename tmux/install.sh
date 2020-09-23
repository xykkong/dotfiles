#!/bin/bash

file1='.tmux.conf'
file2='.tmux.conf.local'
repo=$(pwd)

ln -s $repo/$file1 ~/$file1
ln -s $repo/$file2 ~/$file2
