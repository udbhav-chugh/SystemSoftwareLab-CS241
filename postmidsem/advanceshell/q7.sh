#! /bin/bash

mkdir multiple_pdf
j=1;
for (( i = 1; i < 384; i=i+2 )); do
	pdftk Linux.Shell.Scripting.Cookbook.pdf cat $i $(($i+1)) output new$j.pdf
	mv new$i.pdf ./multiple_pdf/
	j=$((j+1))
done
mv ./multiple_pdf ~/Success


# pages=$(qpdf --show-npages Linux.Shell.Scripting.Cookbook.pdf)
# mkdir multiple_pdf
# count=1;
# for (( i = 1; i <= $pages; i+=2 )); do
# 	qpdf --pages Linux.Shell.Scripting.Cookbook.pdf $i-$((i+1)) -- Linux.Shell.Scripting.Cookbook.pdf multiple_pdf/output$count.pdf
# 	count=$((count+1))
# done

# mkdir ~/Success

# ls -l multiple_pdf | grep ^- | awk '{print $NF}' | while read line
# do
# 	cp multiple_pdf/$line ~/Success
# done

# rm -r multiple_pdf