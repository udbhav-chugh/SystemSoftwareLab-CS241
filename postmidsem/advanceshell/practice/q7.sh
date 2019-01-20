#! /bin/bash

mkdir multiple_pdf

page=$(pdftk Linux.Shell.Scripting.Cookbook.pdf dump_data | grep "NumberOfPages" | awk '{print $2}')

j=1
echo $page
for (( i=1 ; i< $page ; i=i+2 ))
do
	pdftk Linux.Shell.Scripting.Cookbook.pdf cat $i $((i+1)) output ./multiple_pdf/new$j.pdf
	j=$((j+1))
done

mv multiple_pdf ~/Success 
