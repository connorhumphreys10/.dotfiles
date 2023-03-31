 #!/bin/bash
#check operating system
if uname!="Linux"
	echo "Error Message" >> linuxsetup.log
	exit
#create TRASH directory
mkdir -p .TRASH
#rename vimrc file
mv .vimrc .bup_vimrc
echo ".vimrc was renamed .bup_vimrc" >> linuxsetup.log
#overwrite contents of etc/vimrc
cp etc/vimrc ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashr:

