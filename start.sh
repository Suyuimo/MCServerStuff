#!/bin/bash

#Variabeln
javamax=XX #7G
serverjarfile=spigot-1.20.4.jar # spigot-1.20.4.jar in meinem Beispiel.

#noip DDNS Update Key
noipusername=XXX
noippassword=XXX
noiphostname=all.ddnskey.com # all.ddnskey.com in meinem Bespiel.

#noip v6 update?
noipv6update=n # n für Nein, y für Ja

# Server starten
screen -d -m -S minecraft java -Xmx$javamax -jar $serverjarfile nogui
screen -d -m -S noipv4 noip-duc -g all.ddnskey.com --username $noipusername --password $noippassword

if [ $noipv6update == 'y' ]
then
screen -d -m -S noipv6 noip-duc -g all.ddnskey.com --username $noipusername --password $noippassword --ip-method http://ip1.dynupdate6.no-ip.com/
fi
