# MCServerStuff
Ein Repo für Minecraft Server Skripte

Damit dieser Code funktioniert muss dass Paket screen und cifs-utils installiert sein.

Alle Linux Systeme mit Debian unterbau:

apt install screen libglib2.0-dev

Im crontab wird folgender Befehl eingetragen um Täglich das Backup Skript zu starten:

0 0 * * 0 /home/mc/server/backup.sh

Die Skripte müssen mit chmod +x ausführbar gemacht werden!!
