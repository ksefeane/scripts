#!/bin/zsh

clear
echo "setup V0.1..\n"

name=""
user=""
date="NULL"
clock="NULL"

getName()
{
	local name=""
	local namefile="./name.txt"
	if [ -e "$namefile" ]; then
		cat $namefile
	else
		read -p "what's your name? " name
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
greeting()
{
	local namefile="./name.txt"
	local userfile="./user.txt"
	local user=""
	local name=""
	if [ -e "$userfile" ]; then
		user=$(getUser)
		if [ -e "$namefile" ]; then
			name=$(getName)
			echo "welcome back $name ($user)"
		else
			name=$(getName)
			echo "hello $name ($user)\n"
		fi
	fi
	return
}
greeting
#echo "\nwelcome $name..\n"

#cat << end
#how are you today
#(genki desu ka?)
#end
#echo $cat

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

date=$(getDate)
clock=$(getTime)
user=$(getUser)
echo "\ntoday is $date.."
echo "time: $clock..\n"

#if [ -z "$user" ]; then
#	read -p "please enter your username -> " user
#fi

#read -p "kimi no namae wa? " user

#echo "hello $user"
