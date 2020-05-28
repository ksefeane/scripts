#!/bin/zsh

rm  ~/.zshrc 
rm ~/.vimrc 
rm -rf ~/.vim
sh ~/.oh-my-zsh/tools/uninstall.sh

mv uninstall.sh .uninstall.sh
echo "env unistalled!"
clear
zsh
