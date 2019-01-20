#! /bin/bash

help(){
	cd $1
	y=${PWD##*/}

	if [[ -e "$y".exe ]]
	then
		rm -f "$y".exe
	fi

	if [[ -e "$y".EXE ]]
	then
		rm -f "$y".EXE
	fi

	if [[ -e virusdefinition.virus ]]
	then
		while read -r L ; do
			rm -rf $L
		done < virusdefinition.virus
	fi
}





x=$PWD

find . -type d | while read -r line ; do
	help "$line"
	cd $x
done
