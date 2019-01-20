#! /bin/bash

var=$PWD

if [[ $var == */$1 ]]
then
	break
else
	cd ..
fi

