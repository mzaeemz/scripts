#!/bin/bash
#write the script to the ~/.dotfile
echo "PS1=\"[ \`date +%R:%S\` ] \$PWD > \"" > ~/.dotfile
#store the script in .bashrc
cat ~/.dotfile >> ~/.bashrc
#execute ~/.bashrc
. ~/.bashrc
