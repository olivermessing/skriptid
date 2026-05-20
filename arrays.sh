#!/usr/bin/bash
#arrays.sh

names=("Anna" "Maali" "Jüri") #masiivi 3 elementi
echo "esimene nimi: ${names[0]}"
echo

for name in "${names[@]}; do
    echo "$name"
done

echo

#tagurpidi
for((x=${names[@]})-1; x>0; x--)); do
    echo "${names[0]}"
done
