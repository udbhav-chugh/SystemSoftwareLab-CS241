echo Enter two integers:
read a
read b
echo GCD of $a and $b:

if [ $a -gt $b ]; then
    ans=$b
else
    ans=$a
fi

while :
do
    if [[ $(($b%$ans)) -eq 0 && $(($a%$ans)) -eq 0 ]]; then
        break
    fi

    ans=$(($ans-1))
done

echo $ans
