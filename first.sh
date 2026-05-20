#!/usr/bin/bash

#phasta ekraan
clear

echo "Bash versioon: ${BASH_VERSION}"

#värvid
RED='\033[0;31m' #punane
BLUE='\033[1;34m' #sinine rasvane
NC='\033[0m' #no color

echo -e "Tere tulemast ${RED}Bash Shell${NC} maailma!"
echo -e "Teadmises ${BLUE}on jõud${NC}!"

#küsime nikaua kuni saane õige vastuse.
while true; do
    read -r -p "Kas jätkame skripti jooksutamist? [j/e] " result
    case $result in 
        [Jj]* ) echo "Sooviti jätkata" ; break;;
        [Ee]* ) echo "Ei soovitud jätkata. Lõpetame" ;exit;;
        * ) ecoh "Val J või E" ;;
    esac
done

echo -e "${BLUE}jätkame skripti tööd${NC}."

# Tavaline for-loop
for((x=1; x<11; x++)); do
    echo -e "Tere ${RED}$x${NC}. korda"
done

#ootame kasutaja enter klahvi vajutamist
read -r -n 1 -s -p "jätkamiseks vajuta Enter..."
echo #reavahetus

#mitte tavaline
for x in {0..10}
do
    echo -e "Tere${RED}$x${NC}. korda. imelik varjant :)"
done

echo

#paari kaupa
for x in {0..10..2}; do
    echo -e "Paari kaupa suurendamine ${BLUE}$x${NC}"
done

echo

# while loop 10...1
X=10
while [ $x -gt 0 ]; do
    echo $x
    x=$((x - 1))
done