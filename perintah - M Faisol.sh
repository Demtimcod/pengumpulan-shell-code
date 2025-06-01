#!/bin/bash

# Fungsi untuk menghasilkan nama acak
generate_random_name() {
  tr -dc 'a-z0-9' </dev/urandom | head -c 8
}

# Membuat 10 folder dengan nama acak
for i in {1..10}; do
  folder_name=$(generate_random_name)
  mkdir "$folder_name"
  
  # Masuk ke folder tersebut
  cd "$folder_name"
  
  # Membuat 5 file .txt dengan nama acak
  for j in {1..5}; do
    file_name=$(generate_random_name)
    touch "$file_name.txt"
  done
  
  # Kembali ke direktori sebelumnya
  cd ..
done
