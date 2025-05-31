

generate_random_string() {
  tr -dc A-Za-z0-9 </dev/urandom | head -c 8
}

for ((i = 1; i <= 10; i++)); do
  folder_name=$(generate_random_string)
  mkdir "$folder_name"

  cd "$folder_name"

  for ((j = 1; j <= 5; j++)); do
    file_name=$(generate_random_string).txt
    touch "$file_name"
  done

  cd ..
done

echo "Selesai membuat 10 folder dengan masing-masing 5 file .txt random."
