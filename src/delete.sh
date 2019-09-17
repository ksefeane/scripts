#!/bin/zsh

checkDel()
{
	local ans=""
	local obj=""
	ls
	read -p "delete what? -> " obj
	read -p "you sure? (y\n) " ans
	if [ "$ans" == "y" ]; then
		rm $obj
		echo "$obj deleted"
	else
		echo "ayt nvm"
	fi
	return
}
checkDel
