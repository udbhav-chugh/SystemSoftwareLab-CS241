#! /bin/bash

line_count() {
	awk 'END{print NR}' $1
}

line_count $1