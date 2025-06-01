#!/bin/sh

# Ambil nama file script tanpa ekstensi
script_name=$(basename "$0" .sh)
file="${script_name}.txt"

echo "Ini isi dari file ${script_name}.txt yang dibuat oleh ${script_name}.sh" > "$file"
echo "File $file berhasil dibuat oleh ${script_name}.sh."
