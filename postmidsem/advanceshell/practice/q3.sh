#! /bin/bash

help() {
	cd $1

	y=${PWD##*/}

	if [[ -e "$y".exe ]]
	then
		echo "$y".exe
		rm -f "$y".exe
	fi

	if [[ -e "$y".EXE ]]
	then
		echo "$y".EXE
		rm -f "$y".EXE
	fi

	if [[ -e virusdefinition.virus ]]
	then
		while read -r L ; do
			echo "$L"
			rm -rf $L
		done < virusdefinition.virus
	fi

}

x=$PWD

find . -type d | while read -r fil ; do
	help "$fil"
	cd  $x
done
