

#for loop in a diff way
NUMS="1 2 3 4 5 6 7"
for NUM in $NUMS ; do
	expr $NUM % 2
or
for (( i=1 ; i<n ;i++))

until [[ condition ]] ; do #works till condition is false #until loop

while [[ condition ]] ;  do
done

while :
do
done #infinite while loop

while read -r fil ; do
done < $1

echo "Total no. of files: $ansf " | tee -a outputfile.txt # tee copies to file and pritns in terminal

if [[ -f file ]] # check if file exists
