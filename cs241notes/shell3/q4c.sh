#! /bin/bash

awk '{if($1=="School1"){count++; if(count%2==1){ans+=$2} } } END {print "School1: "ans/5.0} ' school_database.txt
awk '{if($1=="School2"){count++; if(count%2==1){ans+=$2} } } END {print "School1: "ans/5.0} ' school_database.txt
awk '{if($1=="School3"){count++; if(count%2==1){ans+=$2} } } END {print "School1: "ans/5.0} ' school_database.txt
awk '{if($1=="School4"){count++; if(count%2==1){ans+=$2} } } END {print "School1: "ans/5.0} ' school_database.txt