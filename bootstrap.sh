#!/bin/bash

DOTFILES=`pwd`

# setup symlinks
ln -s $DOTFILES/.config ~/.config
ln -s $DOTFILES/.gitconfig ~/.gitconfig
ln -s $DOTFILES/.spacemacs ~/.spacemacs
