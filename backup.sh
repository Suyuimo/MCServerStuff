#!/bin/bash

#Variabeln
smbserver=xxx
smbusername=xxx
smbpassword=xxx

#Info an alle Spieler
screen -S minecraft -X stuff "say Die Welt wird nun gesichert \n"
screen -S minecraft -X stuff "say Der Server wird dabei kurz neugestartet

./stop.sh

