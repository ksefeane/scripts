#!/bin/zsh

export src="./src"
source $src/func.sh

clear
echo "setup V0.1.
"
name=""
user=""
date=$(getDate)
clock=$(getTime)


echo "date: $date"
echo "time: $clock
"
greet 
