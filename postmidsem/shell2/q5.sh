#! /bin/bash
read -a arr

for (( i=0 ; i<${#arr[@]} ; i++ )) ; do
	(( count[${arr[$i]}]++ ))
done

for elem in ${!count[@]} ; do
	if [[ ${count[$elem]} == 1 ]]; then
		#statements
		echo $elem
	fi
done


<<c1

read -a arr
n=${#arr[@]}
for (( i = 0; i < n ; i++ )); do
      #statements
      let flag=0
      for (( j = 0; j < n; j++ )); do
            #statements
            if [[ arr[i] -eq arr[j] && i -ne j ]]; then
                  #statements
                  let flag=1
                  break
            fi
      done
      if [[ flag -eq 0 ]]; then
            #statements
            echo -n "${arr[$i]} "
      fi
done
c1