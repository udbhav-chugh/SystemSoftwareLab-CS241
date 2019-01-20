#! /bin/bash

awk '{printf "" > $1".txt"}' "$1"