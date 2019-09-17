#!/bin/zsh

clear
echo "setup V0.1..\n"

name="kori"
user="N/A"
date="NULL"
clock="NULL"
echo "welcome $name..\n"

cat << end
how are you today
(genki desu ka?)
end
echo $cat

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
echo "today is $date.."
echo "time: $clock..\n"

read -p "kimi no namae wa? " user
echo "\nhello $user"
