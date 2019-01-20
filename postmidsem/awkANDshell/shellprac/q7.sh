#! /bin/bash

find ./"$1"/ -name "hello2.txt"
ls ./"$1" | wc -l
rm ./"$1"/*.c
find -maxdepth 1 -size 0 | xargs rm
