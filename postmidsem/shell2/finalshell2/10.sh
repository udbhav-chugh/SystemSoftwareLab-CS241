read -a input
category[0]="CD No."
category[1]="Movie Name"
category[2]="Language"
category[3]="Price"
category[4]="Date of Release"
IFS=""

if [[ ! -f "output.txt" ]]; then
    for item in ${category[*]}
    do
        printf "${item} " >> output.txt
    done
    printf "\n" >> output.txt
fi

for item in ${input[*]}
do
    printf "${item}\t" >> output.txt
done
printf "\n" >> output.txt
