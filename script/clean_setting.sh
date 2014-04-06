#!/bin/bash

for file in .bashrc .zshrc .tmux_conf .vimrc
do
    rm -v ~/${file}
done
