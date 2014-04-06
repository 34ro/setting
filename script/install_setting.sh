#!/bin/bash

for file in .bashrc .zshrc .tmux.conf .vimrc
do
    curl -L https://raw.githubusercontent.com/34ro/setting/master/configure/${file} > ~/${file}
done
