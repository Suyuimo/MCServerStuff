#!/bin/bash

#Variabeln
smbserver=xxx
smbusername=xxx
smbpassword=xxx

# Lokales Backup nach kopieren auf den SMB Server löschen?
deletelocalbackup=y # n für Nein, y für Ja

#Aktuelle Zeit und Datum
date=$(date +%Y%m%d)
time=$(date +%F_%H:%M:%S)

#Info an alle Spieler
screen -S minecraft -X stuff "say Die Welt wird nun gesichert \n"
screen -S minecraft -X stuff "say Der Server wird dabei kurz neugestartet

./stop.sh

mkdir ../server-$date-$time

cp -R * ../server-$date-$time

