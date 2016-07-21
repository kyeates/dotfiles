#!/bin/bash
. ~/dotfiles/config

load_dot_files() {
	shopt -s nullglob
	for file in $DOT_FILES_DIR/$1/.*
	do
		[[ $file =~ (\.|\.\.)$ ]] && continue 
	 	. "$file"	
	done 
	shopt -u nullglob
}

if [[ $ENV_NAME == $XPS ]]; then
	readonly WORK_DIR=$HOME/projects/work
	load_dot_files $XPS

#elif [[ `uname` == 'Windows' ]]; then
#	readonly WORKDIR=$HOME
fi

. "$DOT_FILES_DIR/.docker_func"
. "$DOT_FILES_DIR/.shortcuts"


