unoconv -f csv marks.xlsx
unoconv -f csv grades.xlsx

awk -F, '{ getline f < "grades.csv" ; print $0,f } ' OFS=, marks.csv > marksd.csv
awk -F, '{print $1,$2,$3,$7,$10}' OFS=, marksd.csv > marks.csv

ssconvert marks.csv final_marksheet.xlsx

rm marksd.csv marks.csv grades.csv
