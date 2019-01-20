#! /bin/bash

num_load() {
	grep -wh "num loads from remote cache" ./[123]/[123].out > ./output/1.output

}

value_sum() {
	awk -F "|" 'BEGIN{ans=0} { for(i=1;i<=NF;i++) ans+=$i} END {print ans}' ./output/1.output > ./output/2.output
}

num_load
value_sum