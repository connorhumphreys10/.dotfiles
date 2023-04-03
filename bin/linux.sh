#!/bin/bash

#check operating system for Linux, if not error message and exit
VAR=$(uname)
if [[ "$VAR" != *"Linux"* ]]; then
	echo "Error Message" >> linuxsetup.log
	exit
fi

#create TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

#rename vimrc file in home directory and message setup log
if [[ -f ~/.vimrc ]]; then
	echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
	mv ~./vimrc ~/.bup_vimrc
fi

#overwrite contents of etc/vimrc to .vimrc file in home directory
cp ./etc/vimrc ~/.vimrc

#add statement to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
