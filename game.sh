#!/usr/bin/bash
# game.sh

#Arva ära number vahemikus 1-100. tagaukseks on 1000
#Ülessanne: Mängu lõppedes küsi kasutajalt kas mängida veel. j(jah) puhul reseti andmed ja alusta uuesti
#arvuti mõtleb numbri
pc_nr=$((RANDOM % (100 -1 +1)+ 1))

#Test
echo "$pc_nr"

#kasutaja õeldud number
user_nr=0
#mitu sammu arvamiseks
counter=0
#kas mäng on läbi
game_over=false

ask() {
    read -r -p "Sisesta number " user_nr
    counter=$((counter+1))
    if [ "$user_nr" -gt "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Väiksem"
    elif [ "$user_nr" -lt "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Suurem"
    elif [ "$user_nr" -eq "$pc_nr" ] && [ "$user_nr" -ne 1000 ]; then
        echo "Õige vastus!"
        game_over=$true
    elif [ "$user_nr" -eq 1000 ]; then
        echo "Leidsite tagaukse. Number on $pc_nr"
    fi
}

lets_play() {
    while [ "${game_over}" ]; do
        ask
    done
    echo "arvasid ära $counter korraga."
    play_again

}

play_again() {
    read -r -p "Kas mängime veel [J/E] " Response
    case "$Response" in
        [jJyY]*)
            pc_nr=$((RANDOM % (100 -1 +1)+ 1))
            game_over=false
            counter=0
            lets_play;;
            *) echo "Mäng läbi";;
    esac
}

lets_play