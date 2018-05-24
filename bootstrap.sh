#!/bin/bash

DOTFILES=`pwd`

# setup symlinks
ln -s $DOTFILES/.config ~/.config
ln -s $DOTFILES/.gitconfig ~/.gitconfig
ln -s $DOTFILES/.spacemacs ~/.spacemacs
ln -s $DOTFILES/.slate ~/.slate
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
ln -s $DOTFILES/whiteboard /usr/local/bin/whiteboard
