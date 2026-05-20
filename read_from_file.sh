#!/usr/bin/bash
#read_from_file.sh

file_name="$1"

if [ -f "$file_name" ]; then
   #echo "Fail olemas" #TEST
   extensions=() #Tühi masiiv
   while IFS='' read -r line; do
        if [ ! -z "$line" ]; then
            extensions+=("$line") 
        fi
   done < "$file_name" #loe faili sisu
   
   echo "Laiendeid kokku: ${#extensions[@]}"
    sep=", "
    for ext in "${extensions[@]}"; do
        printf "%s%s" "$sep" "$ext"
        sep=", "
    done
    echo

    index=$((RANDOM % ${#extensions[@]}))
    echo "${extensions[$index]}"
    #ülesanne 3: Täienda skripti nii et kui argumenti pole: failinimi.sh extensions.txt
    #kasuta: ./read_from_file.sh extensions.txt
else
    echo "Kasuta: $0 extensions.txt"

fi

#väljasta kõik leitud laiendid ühel real kujul: png, jpg, txt ..
#ülesanne 2 Väljasta üks juhuslik laiend masiivist extensions
