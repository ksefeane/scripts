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
greeting()
{
	local namefile="./name.txt"
	local name=""
	if [ -e "$namefile" ]; then
		name=$(getName)
		echo "welcome back $name.."
	else
		name=$(getName)
		echo "hello $name\n"
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
