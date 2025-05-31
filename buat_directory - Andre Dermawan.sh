#!/bin/bash

for i {1..5}
	dir_name=$(mktemp -u XXXXX)
	mkdir "$dir_name"
	echo "Direktori berhasil dibuat : $dir_name"
done
