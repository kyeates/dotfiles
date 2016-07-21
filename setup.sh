#!/bin/bash

readonly DOT_DIR=`pwd`

## ssh config
#ln -s $DOT_DIR/config $HOME/.ssh/config

## add links in bashrc. will not handle changes to that file
if [[ -z `grep "$DOT_DIR/.bashrc" $HOME/.bashrc` ]]; then
	echo ". $DOT_DIR/.bashrc" >> $HOME/.bashrc
	echo "$HOME/.bashrc linked" 
else
	echo "$HOME/.bashrc skipping, already updated"
fi
