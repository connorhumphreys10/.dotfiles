#!/bin/bash
#removing .vimrc file from home directory
rm ~/.vimrc
#remove everything in line starting with s from end of .bashrc file
sed 's/s.*//' ~/.bashrc
#remove the .TRASH directory from home directory
rm ~/.TRASH
