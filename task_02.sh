#!/usr/bin/bash
#task_02.sh

#skript loeb käsurealt laiendi ja loeb kokku ülesande tulemus
#failist (random.txt) kõik need laiendid ning näitab tulemust konsooli.
#Vastuseks ütleb laiendi mida otsiti ja koguse, kui ei leitud, siis ütleb et antud laiendit ei leitud

EXT="$1"
SRC="random.txt"
if [ -z "$EXT" ]; then
    echo "Kasutus: $0 <laiend>"
    exit 1
fi
if [ ! -f "$SRC" ]; then
    echo "Faili ei leitud: $SRC"
    exit 1
fi
total=$(grep -c "^$EXT$" "$SRC")
if [ "$total" -gt 0 ]; then
    echo "Laiend $EXT leitud $total korda."
else
    echo "Laiendit $EXT ei leitud."
fi
