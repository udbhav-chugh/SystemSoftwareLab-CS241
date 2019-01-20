check=$(ls -l | grep $1)
if [[ $check != ?r* ]]; then
    echo "File doesn't have read permissions"
elif [[ -f $2 ]]; then
    echo "Do you want to overwrite the file (yes/no) ?"
    read bool
    if [[ $bool == "yes" ]]; then
        cat $1 > $2
    else
        cat $1 >> $2
    fi
else
    cat $1 > $2
fi
