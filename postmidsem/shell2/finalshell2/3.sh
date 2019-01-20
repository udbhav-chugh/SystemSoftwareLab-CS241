# while :
# do
#     check=$(ls | grep $1 )
#     if [ -z "$check" ]; then
#         cd ..
#     else
#         break
#     fi
# done
# cd $1

while :
do
    check=$(pwd)
    if [[ $check == */$1 ]]; then
        break
    else
        cd ..
    fi
done
