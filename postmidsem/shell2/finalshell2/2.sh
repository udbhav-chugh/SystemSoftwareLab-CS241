function num_load {
    grep -h "num loads from remote cache" ./1/1.out ./2/2.out ./3/3.out > ./output/1.output
}

function value_sum {
    awk -v total=0 '{ for(i = 1; i <= NF; i++) total += $i } END { print total }' ./output/1.output > ./output/2.output
}

num_load
value_sum
