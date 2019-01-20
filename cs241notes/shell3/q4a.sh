#! /bin/bash

awk '{if($1=="School1") {ans1+=$2} if($1=="School2") {ans2+=$2} if($1=="School3") {ans3+=$2} if($1=="School4") {ans4+=$2} } END {print "School1: " ans1/10.0; print "School2: " ans2/10.0 ; print "School3: " ans3/10.0 ; print "School4: " ans4/10.0 } ' school_database.txt
# awk '{if($1=="School1") {ans+=$2} } END {print "School1: "ans/10.0} ' school_database.txt
# awk '{if($1=="School2") {ans+=$2} } END {print "School2: "ans/10.0} ' school_database.txt
# awk '{if($1=="School3") {ans+=$2} } END {print "School3: "ans/10.0} ' school_database.txt
# awk '{if($1=="School4") {ans+=$2} } END {print "School4: "ans/10.0} ' school_database.txt 