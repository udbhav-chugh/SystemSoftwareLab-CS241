#! /bin/bash

unoconv -f csv marks.xlsx
unoconv -f csv grades.xlsx

awk -F, '{getline f < "grades.csv" ; print $0,f}' OFS=, marks.csv > marksd.csv
awk -F, '{print $0,$1,$2,$3,$7,$10 }' OFS=, marksd.csv > marks.csv

rm marksd.csv

ssconvert marks.csv final_marksheet.xlsx

rm marks.csv grades.csv