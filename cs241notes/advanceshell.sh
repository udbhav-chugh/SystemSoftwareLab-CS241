tr -d ' ' //delete space
echo {a-z} //gives a b c d e .....
tr "$a2" "$a1" //replaces ith index of a2 with a1

convert $file ./nature_images/$i.pdf
du -ah //all files size in human readable format
convert -resize 25% $file $file //resize $file

page=$(pdftk Linux.Shell.Scripting.Cookbook.pdf dump_data | grep "NumberOfPages" | awk '{print $2}') //to get page numbers
pdftk Linux.Shell.Scripting.Cookbook.pdf cat 1 2 3-5 output new$j.pdf

unoconv -f csv marks.xlsx

ssconvert marks.csv final_marksheet.xlsx
awk -F, '{ getline f < "grades.csv" ; print $0,f } ' OFS=, marks.csv > marksd.csv