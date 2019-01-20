#! /bin/bash

awk '{if($1>=17491011 && $1<=17491015 && ($1%2)==1 && $2=="CS241"){print "Roll Number: "$1 "  Subject: "$2}}' "$1"