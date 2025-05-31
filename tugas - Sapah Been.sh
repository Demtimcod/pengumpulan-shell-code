for i in {1..5}; do
    touch "$(openssl rand -hex 8).txt"
done
