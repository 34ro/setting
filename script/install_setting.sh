#!/bin/bash

for file in .bashrc .zshrc .tmux_conf .vimrc
do
    curl -L https://raw.githubusercontent.com/34ro/setting/master/configure/${file} > ~/${file}
done
