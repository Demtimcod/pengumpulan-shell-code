
# Daftar hp yang digunakan sebagai nama file
hp=(samsung oppo vivo realmi xiaomi)

# Loop untuk membuat file
for hp in "${hp[@]}"
do
    touch "${hp}.txt"
    echo "File ${hp}.txt berhasil dibuat."
done
