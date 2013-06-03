#!/bin/bash

# Get platform
# ============

PLATFORM="unknown"
unamestr=`uname`
if [[ "$unamestr" == "Linux" ]]; then
	PLATFORM="Linux"
	if [ -f /etc/debian_version ] ; then
		PLATFORM="Ubuntu"
	fi
elif [[ "$unamestr" == "Darwin" ]]; then
	PLATFORM="OSX"
fi

# Do the symlinking
# =================

# Vim (.vimrc and .vim directory)
rm $HOME/.vimrc &> /dev/null
rm -r $HOME/.vim &> /dev/null
ln -s $PWD/../resources/vimrc $HOME/.vimrc &> /dev/null
ln -s $PWD/../resources/vim $HOME/.vim &> /dev/null

# Nano (.nanorc and .nano directory)
rm $HOME/.nanorc &> /dev/null
rm -r $HOME/.nano &> /dev/null
ln -s $PWD/../resources/nanorc $HOME/.nanorc &> /dev/null
ln -s $PWD/../resources/nano $HOME/.nano &> /dev/null

# Vimperator
rm $HOME/.vimperatorrc &> /dev/null
ln -s $PWD/../resources/vimperatorrc $HOME/.vimperatorrc &> /dev/null

# Sublime symlinking
if [[ `uname` == "Darwin" ]]; then
	rm $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
	ln -s $PWD/../resources/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
fi

# WebStorm 6
if [[ `uname` == "Darwin" ]]; then
	rm -r $HOME/Library/Preferences/WebStorm6 &> /dev/null
	ln -s $PWD/../resources/WebStorm6 $HOME/Library/Preferences/WebStorm6
fi

# Alfred
if [[ `uname` == "Darwin" ]]; then
	rm $HOME/Library/Preferences/com.alfredapp.Alfred.plist &> /dev/null
	ln -s $PWD/../resources/com.alfredapp.Alfred.plist $HOME/Library/Preferences/com.alfredapp.Alfred.plist
fi

# SSH
rm $HOME/.ssh/config &> /dev/null
ln -s $PWD/../resources/sshconfig $HOME/.ssh/config &> /dev/null

# Git
rm $HOME/.gitconfig &> /dev/null
ln -s $PWD/../resources/gitconfig $HOME/.gitconfig &> /dev/null
rm $HOME/.gitignore_global &> /dev/null
ln -s $PWD/../resources/gitignore_global $HOME/.gitignore_global &> /dev/null

# Input aliases
rm $HOME/.inputrc &> /dev/null
ln -s $PWD/../resources/inputrc $HOME/.inputrc &> /dev/null

# csh
rm $HOME/.cshrc &> /dev/null
ln -s $PWD/../resources/cshrc $HOME/.cshrc

# tmux
rm $HOME/.tmux.conf &> /dev/null
ln -s $PWD/../resources/tmuxconf $HOME/.tmux.conf

# screen
rm $HOME/.screenrc &> /dev/null
ln -s $PWD/../resources/screenrc $HOME/.screenrc

# IRB
rm $HOME/.irbrc &> /dev/null
ln -s $PWD/../resources/irbrc $HOME/.irbrc

# basrc and bash_profile
rm $HOME/.bash_profile &> /dev/null
ln -s $PWD/../resources/bashrc $HOME/.bash_profile
rm $HOME/.bashrc &> /dev/null
ln -s $PWD/../resources/bashrc $HOME/.bashrc
