#!/bin/zsh

getName()
{
	local name=""
	local namefile="./name.txt"
	if [ -e "$namefile" ]; then
		cat $namefile
	else
		read -p "what's your name? 
-> " name
		echo $name >> $namefile
		cat $namefile
	fi
	return
}

getUser()
{
	local user=""
	local userfile="./user.txt"
	if [ -e "$userfile" ]; then
		cat $userfile
	else
		read -p "please enter your username -> " user
		echo $user >> $userfile
		cat $userfile
	fi
	return
}

greet()
{
	local namefile="./name.txt"
	local userfile="./user.txt"
	local user=""
	local name=""
	
	if [ -e ""]
	return
}

getDate()
{
	date "+%Y-%m-%d"
	return
}

getTime()
{
	date "+%H:%M:%S"
	return
}
