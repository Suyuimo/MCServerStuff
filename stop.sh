#!/bin/bash

#Info an alle Spieler

screen -S minecraft -X stuff "say Der Server wird in 20 Sekunden heruntergefahren \n"

# Warte 20 Sekunden
sleep 20


# Stope den Server
screen -S minecraft -X stuff "stop \n"
