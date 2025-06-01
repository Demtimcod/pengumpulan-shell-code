# Daftar hewan yang digunakan sebagai nama file
hewan=(ayam kucing keinci rusa kudanil)

# Loop untuk membuat file
for hewan in "${hewan[@]}"
do
    touch "${hewan}.txt"
    echo "File ${hewan}.txt berhasil dibuat."
done
