#!/bin/bash

#removing .vimrc file from home directory
rm -f ~/.vimrc

#remove the line 'source /.dorfiles/bashrc_custom' in bashrc file
sed -i '/source ~\/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#remove the .TRASH directory from home directory
rm -rf ~/.TRASH
