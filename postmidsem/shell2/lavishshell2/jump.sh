while :
do
    check=$(pwd)
    if [[ $check == */$1 ]]; then
        break
    else
        cd ..
    fi
done
