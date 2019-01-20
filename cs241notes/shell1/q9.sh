#! /bin/bash

awk '{printf "" > $1".txt"}' "$1"
awk '{if($1>=17491011 && $1<=17491015 && $2=="CS241" && (($1)%2==1)) {print "Roll no:"$1 " Subject:"$2}}' "$1"
