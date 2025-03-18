#!/bin/bash

# Backup original file
if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/.bash_aliases.bak
    echo "Backup of existing .bash_aliases saved as .bash_aliases.bak"
fi

# Create symlink from dotfiles
ln -s ~/dotfiles/homefiles/bash_aliases ~/.bash_aliases
echo "Symlink created for .bash_aliases"

# Ensure .bashrc sources it
if ! grep -Fxq "if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi" ~/.bashrc; then
    echo -e "\n# Source aliases" >> ~/.bashrc
    echo "if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi" >> ~/.bashrc
    echo "Added source line for .bash_aliases to .bashrc"
fi

# Reminder
echo "✅ Done! Run 'source ~/.bashrc' or log out and log back in to apply changes."
