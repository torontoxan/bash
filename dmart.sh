#! /bin/bash
cd /home/osboxes
mkdir dmart
cd mart
mkdir ki406
cd ki406
echo '' > log.txt
echo 'martynuk579@gmail.com' > dmart.txt
cp dmart.txt /home
cp /home/osboxes/bash_script/'Apache_2.4-PHP_5.5-5.6_queriesa (1).log' /home/osboxes/dmart/ki406

file_path="/home/osboxes/dmart/ki406/dmart.txt"


email_regex="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"


if [[ $(grep -E -c "$email_regex" "$file_path") -gt 0 ]]; then
    echo "File contains email"
else
    echo "File do not contains email"
fi

log_file="/home/osboxes/dmart/ki406/log.txt"
apache_log="/home/osboxes/dmart/ki406/Apache_2.4-PHP_5.5-5.6_queriesa (1).log"


grep '404' "$apache_log" | tee "$log_file"


error_count=$(grep -c ' " 404 ' "$apache_log")
echo "Number of 404 errors: $error_count"
