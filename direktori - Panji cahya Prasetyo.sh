#!/bin/bash

for i in {1..5}; do
    dir_name=$(mktemp -u XXXXXX)
    mkdir "$dir_name"
    echo "Direktori dibuat: $dir_name"
done
