# Ersteinrichtung des Socat Servers fuer Mincecraft

#Einlesen der Paketquellen
apt update

# Server wird auf den neusten Stand gebracht
apt upgrade -y

# Installieren der benoetigten Pakete
apt install screen socat wget -y

#Herunterladen des Setup MC User Skript
wget https://github.com/Suyuimo/MCServerStuff/blob/main/createmcuser.sh

#Starten des Scripts
echo "Bitte ein Passwort fuer den MC User eingeben"
chmod +x createmcuser.sh
./createmcuser.sh

#Herunterladen des Scripts zum starten fuer socat
wget https://github.com/Suyuimo/MCServerStuff/blob/main/IPv4toIPv6/start.sh
mv start.sh /home/mc/
chown mc:mc /home/mc/start.sh
chmod +x /home/mc/start.sh
