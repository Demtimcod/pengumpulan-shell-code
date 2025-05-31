#!/bin/bash
nama=( "cat" "brid" "flower" "mouse" "dragon" )
for i in "${nama[@]}"
do
	touch "$i.txt"
	echo "$i.txt telah dibuat"
done
