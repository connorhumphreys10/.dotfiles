#!/bin/bash
#check operating system for Linux, if not error message and exit
VAR=$(uname)
if $VAR != "Linux"
	echo "Error Message" >> linuxsetup.log
	exit
fi
#create TRASH directory if it doesn't exist
mkdir -p .TRASH
#rename vimrc file in home directory and message setup log
mv .vimrc .bup_vimrc
echo "Current .vimrc file was renamed to .bup_vimrc" >> linuxsetup.log
#overwrite contents of etc/vimrc to .vimrc file in home directory
cp etc/vimrc ~/.vimrc
#add statement to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
