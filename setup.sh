#!/bin/bash

readonly DOT_FILES_DIR=`pwd`

## ssh config
ln -s $DOT_FILES_DIR/ssh_config $HOME/.ssh/config

## add links in bashrc. will not handle changes to that file
if [[ -z `grep "$DOT_FILES_DIR/.bashrc" $HOME/.bashrc` ]]; then
	echo ". $DOT_FILES_DIR/.bashrc" >> $HOME/.bashrc
	echo "$HOME/.bashrc linked" 
else
	echo "$HOME/.bashrc skipping, already updated"
fi


