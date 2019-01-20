#! /bin/bash

num_load() {
	grep -h "num loads from remote cache" ./[123]/[123].out > ./output/1.output
}

value_sum() {
	awk -F "|" 'BEGIN{ans=0} {for(i=2;i<=NF;i++) map[i]+=$i} END {for(i in map){printf "%-6d",map[i]}}' ./output/1.output > ./output/2.output
}

num_load
value_sum