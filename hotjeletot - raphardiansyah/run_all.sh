#!/bin/sh

# Loop semua file .sh di direktori, kecuali file ini sendiri
for file in *.sh
do
    if [ "$file" != "run_all.sh" ]; then
        chmod +x "$file"
        ./"$file"
    fi
done
