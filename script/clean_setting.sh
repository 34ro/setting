#!/bin/bash

for file in .bashrc .zshrc .tmux.conf .vimrc
do
    rm -v ~/${file}
done
