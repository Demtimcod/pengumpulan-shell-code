mkdir -p angka_files
cd angka_files

for i in {1..5}; do
    echo "Ini isi file ke-$i" > "$i.txt"
done
