#! /bin/bash

num_load() {

grep -h "num loads from remote cache" 1/1.out 2/2.out 3/3.out > output/1.output  
}

num_load
