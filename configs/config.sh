#!/bin/zsh

clear

#sh trevor.sh

os="`uname`"
theme=".oh-my-zsh/themes/"

echo "---- $os ----"

if [ "$os" == "Linux" ]; then
	cp .vimrc_linux .vimrc
else
	cp .vimrc_mac .vimrc
fi

echo "customizing oh-my-zsh"
cp .zshrc ~
cp $theme/candy.zsh-theme ~/$theme/candy.zsh-theme
sh trevor.sh
