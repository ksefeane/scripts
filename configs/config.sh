#!/bin/zsh

clear

#sh trevor.sh

os="`uname`"
theme="themes"

echo "---- $os ----"

if [ "$os" == "Linux" ]; then
	cp .vimrc_linux .vimrc
else
	cp .vimrc_mac .vimrc
fi

echo "customizing oh-my-zsh"
cp .zshrc ~
cp $theme/candy.zsh-theme ~/.oh-my-zsh/themes/candy.zsh-theme
sh trevor.sh
