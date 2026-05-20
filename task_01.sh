#!/usr/bin/bash
#task_01.sh
#loe laiendite faili (failinimi on skriptis, mitte käsureal)
#faili olemasolu tuleb kontrollida
#võta üks juhuslik laiend failist ja LISA uude faili nimega random.txt
#iga kord kui skripti käivitatakse, lisatakse faili üks uus laiend uuele reale!
#Käivitades näiteks skripti 100 korda, siis on random.txt failis 100 rida ja suvalised laiendid
#kui skript töötab proovi käsiurealt käivitada skripti 100 korda automaatselt

if [ -f "extensions.txt" ]; then
    extensions=() 
    while IFS='' read -r line; do
        if [ ! -z "$line" ]; then
            extensions+=("$line") 
        fi
    done < "extensions.txt" 

    index=$((RANDOM % ${#extensions[@]}))
    echo "${extensions[$index]}" >> random.txt
else
    echo "Faili ei leitud. Kasuta: $0 extensions.txt"
fi

#lühike varjant 
#SRC="extensions.txt"
#DEST="random.txt"
#if [ -f "$SRC" ]; then
#    ext=$(shuf -n 1 "$SRC")
#    echo "$ext" >> "$DEST"
#fi
#käsurealt 100 korda käivitamine: for i in {1..100}; do bash task_01.sh done