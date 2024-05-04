#!/bin/bash

#Variabeln
smbserver=xxx
smbusername=xxx
smbpassword=xxx
smbshare=xxx
smbpath=xxx #Projekt Name

#Backup auf SMB Server?
smbbackup=y # n für Nein, y für Ja

# Lokales Backup nach kopieren auf den SMB Server löschen?
deletelocalbackup=y # n für Nein, y für Ja

#Aktuelle Zeit und Datum
date=$(date +%Y%m%d)
time=$(date +%F_%H:%M:%S)

#Info an alle Spieler
screen -S minecraft -X stuff "say Die Welt wird nun gesichert \n"
screen -S minecraft -X stuff "say Der Server wird dabei kurz neugestartet"

# Server stoppen
./stop.sh

# Backup Verzeichnis erstellen
mkdir ../server-$date-$time

# Backup erstellen
cp -R * ../server-$date-$time

# Backup SMB
if [ $smbbackup == 'y' ]
then
mkdir ../smbserver
mount -t cifs -o username=$smbusername,password=$smbpassword,vers=3.0 //$smbserver/$smbshare ../smbserver
cp -R ./server-$date-$time ../smbserver/$smbpath/
umount ../smbserver
rm -R ../smbserver
fi

# Lösche lokales Backup
if [ $deletelocalbackup == 'y' ]
then
rm -R ../server-$date-$time
fi

# Server starten
./start.sh
