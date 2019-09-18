#!/bin/zsh 

clear
lib="libft"
giturl="https://github.com/ksefeane/"
app=""

#initializing
echo "creating project
"

#libft
if [ -e "libft" ]; then
	echo "libft found
	"
else
	git clone $giturl$lib.git
	echo ""
fi

#includes
if [ -e "inc" ]; then
	echo "inc found
"
else
	echo "creating inc folder
"
	mkdir inc
fi

#sources
if [ -e "src" ]; then
	echo "src found
"
else
	echo "creating src folder
"
	mkdir src
fi

#makefile


makeType()
{
	if [ -z "$app" ]; then
	read -p "are you making a program or a library?
(program/library) -> " app
	fi
	if [ "$app" == "program" ]; then
		cp .project_setup/Makefile_app Makefile
	elif [ "$app" == "library" ]; then
		cp .project_setup/Makefile_lib Makefile
	fi
	echo $app
	return
}
app=$(makeType)
echo "
Makefile created
"
#finishing touches
mv project.sh .project.sh
cd .project_setup
mv .cleanup.sh ..
mv .packup.sh ..

#complete
echo "project ready

!! run 'sh .packup.sh' when your project is finished to clean up all 'project.sh files'"

