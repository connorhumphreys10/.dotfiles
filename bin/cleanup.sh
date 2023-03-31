#!/bin/bash
rm ~/.vimrc
sed 's/"source~/.dotfiles/bashrc_custom/"/' ~/.bashrc
rm ~/.TRASH
