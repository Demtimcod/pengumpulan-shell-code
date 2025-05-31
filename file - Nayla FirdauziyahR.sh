#!/bin/bash

# Nama folder tempat menyimpan file
folder="projekku"
mkdir -p "$folder"  # Membuat folder kalau belum ada

# Array nama file (bebas tanpa angka)
nama_file=("alpha" "bravo" "charlie" "delta" "echo")

# Loop untuk membuat file
for nama in "${nama_file[@]}"; do
    echo "Ini isi dari file $nama.txt" > "$folder/$nama.txt"
    echo "Membuat file $nama.txt di folder $folder"
done

