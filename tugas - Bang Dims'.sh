#!/bin/bash

# Daftar huruf yang digunakan sebagai nama file
letters=(ayam nanas angka sepatu pensil)

# Loop untuk membuat file
for letter in "${letters[@]}"
do
    touch "${letter}.txt"
    echo "File ${letter}.txt berhasil dibuat."
done
