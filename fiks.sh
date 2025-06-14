#!/bin/bash

DEFAULT_OUTPUT_DIR="folder_$(date +%Y%m%d_%H%M%S)"
OUTPUT="$DEFAULT_OUTPUT_DIR"


# Mode check
DELETE_MODE=false
DIR_TO_DELETE=""

while getopts "d:D:h" opt; do
  case $opt in
    d)
      OUTPUT="$OPTARG"
      ;;
    D) # Opsi untuk menghapus direktori
      DELETE_MODE=true
      DIR_TO_DELETE="$OPTARG"
      ;;
    h)
        echo "Bantuan: Gunakan skrip ini untuk mengelola direktori."
        echo "Penggunaan: $0 [-<command> <nama_direktori_output>]"
        echo "  -d <nama_direktori_output> : Tentukan direktori untuk output."
        echo "  -D <direktori_untuk_dihapus> : Hapus direktori yang dipilih"
        echo "  -h : Tampilkan pesan bantuan ini."
        exit 0
        ;;
    \?)
      echo "-h untuk melihat bantuan"
      exit 1
      ;;
  esac
done

shift $((OPTIND - 1))

if [ "$DELETE_MODE" = true ]; then
  if [ -d "$DIR_TO_DELETE" ]; then
    read -p "Apakah Anda yakin ingin menghapus direktori '$DIR_TO_DELETE' dan seluruh isinya? (y/N): " -n 1 -r
    echo # Tambahkan baris baru setelah input y/N
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      echo "Menghapus direktori: $DIR_TO_DELETE"
      rm -r "$DIR_TO_DELETE"
      if [ $? -eq 0 ]; then
        echo "Direktori '$DIR_TO_DELETE' berhasil dihapus."
      else
        echo "Error: Gagal menghapus direktori '$DIR_TO_DELETE'."
      fi
    else
      echo "Penghapusan dibatalkan."
    fi
  else
    echo "Error: Direktori '$DIR_TO_DELETE' tidak ditemukan."
  fi
  exit 0
fi


read -p "Mau Berapa File yang di buat " -r
NUM=$REPLY
if ! [[ "$NUM" =~ ^[0-9]+$ ]] || [ "$NUM" -le 0 ]; then
  echo "Input tidak valid. Harap masukkan angka yang valid"
  exit 1
fi

mkdir -p "$OUTPUT"


for i in $(seq 1 "$NUM");
do
  RANDOM_FILE="$(openssl rand -base64 8 | tr -dc A-Za-z0-9 | head -c 10)"
  touch "$OUTPUT/$RANDOM_FILE.txt"
done
echo "Done Generate folder and file random"
