mkdir -p otomatis_files
cd otomatis_files

for i in {1..5}; do
    echo "Ini isi file ke-$i" > "file$i.txt"
done
