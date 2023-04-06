# My Dotfiles
These are my configuration files for various school projects.
## .vimrc
This is my custom configuration for vim.
## .bashrc
This is my custom configuration for Bash.

# Bin Files
## Cleanup Tools:
#You can run 'make clean' to revert the changes made by running one of the other scripts.

#Removes .vimrc file from home directory
rm -f ~/.vimrc 
#Removes the line 'source ~/.dotfiles/bashrc_custom' in bashrc file
sed -i '/source ~\/\.dotfiles\/bashrc_custom/d' ~/.bashrc 
#Removes the .TRASH directory from home directory
rm -rf ~/.TRASH

## Operating System:
#You can run 'make linux' to check your operating system and if it is not linux, you will receive an error message in linuxsetup.log.

#Check operating system for Linux, if not error message and exit
VAR=$(uname)
if [[ "$VAR" != *"Linux"* ]]; then
	echo "Error Message" >> linuxsetup.log
	exit
fi 
#Creates TRASH directory if it doesn't exist
mkdir -p ~/.TRASH
#Rename vimrc file in home directory and message setup log
if [[ -f ~/.vimrc ]]; then
	echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
	mv ~./vimrc ~/.bup_vimrc
fi
#Overwrite contents of etc/vimrc to .vimrc file in home directory
cp ./etc/vimrc ~/.vimrc
#Append "source" statement to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

##Makefile
#This makefile is used to run 'make linux' and 'make clean'

#Label for the linux script that runs linux.sh and has a dependency on make clean
linux: clean
	./bin/linux.sh
#Label for the clean script that runs clean.sh
clean:
	./bin/cleanup.sh
