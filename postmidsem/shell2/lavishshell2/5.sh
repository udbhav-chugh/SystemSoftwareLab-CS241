read -a input

for (( i=0; i < ${#input[@]}; i++ )); do
    ((count[${input[$i]}]++))
done

for elem in ${!count[@]}; do
    if [[ ${count[$elem]} == 1 ]]; then
        echo $elem
    fi
done
