#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles/vim-config"
VIMRC_DEST="$HOME/.vimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

# Copy .vimrc to home directory
cp "$DOTFILES_DIR/.vimrc" "$VIMRC_DEST"

# Install Vundle if not present
if [ ! -d "$VUNDLE_DIR" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

# Install Vim plugins
vim +PluginInstall +qall

### Referenced: Used https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles and I asked AI for assistance on things I didn't understand (Allowed per your policy in README.md) I struggled a lot with installing vundle but I think I figured it out.
