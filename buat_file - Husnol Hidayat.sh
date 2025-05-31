#!/bin/bash

folder="tugas_cuy"
if [ ! -d "$folder" ]; then
    mkdir "$folder"
fi

cd "$folder"

data=("nama" "nim" "kls" "alamat" "matkul")

for i in {1..5}; do
    filename=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1).txt
    value=${data[$RANDOM % ${#data[@]}]}
    echo "$value" > "$filename"
done
