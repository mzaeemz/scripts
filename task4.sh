#!/bin/bash
echo "PS1=\"[ \`date +%R:%S\` ] \$PWD > \"" > ~/.dotfile
cat ~/.dotfile >> ~/.bashrc
. ~/.bashrc
