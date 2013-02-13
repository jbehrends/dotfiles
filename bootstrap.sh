#!/bin/bash
# 
# bootstrap script to backup exiting dotfiles and symlink new ones in their place.
#
#
###############################

# variables
dotfilesdir=~/.dotfiles    # dir where dotfiles lives
files="bashrc vimrc"        # list of files or folders we will be symlink

# rename original version of our files incase we need to rollback
for file in $files; do
    mv ~/.$file ~/.${file}_original
    ln -s $dotfilesdir/$file ~/.$file
done

