#! /bin/bash

awk '{if (NF==2) { map[$1]+=$2} } END { for ( b in map) print b " : " map[b]/10.0 }' school_database.txt