# MCServerStuff
Ein Repo für Minecraft Server Skripte

Damit dieser Code funktioniert muss dass Paket screen, cifs-utils, git und noip-duc client installiert sein.

Alle Linux Systeme mit Debian unterbau:

apt install screen libglib2.0-dev cifs-utils git

und für duc folgende Befehle:

1. wget --content-disposition https://www.noip.com/download/linux/latest
2. Mit ls dei Versionsnummer herausfinden nip-duc_X.X.X.tar.gz
3. tar xf noip-duc_X.X.X.tar.gz
4. cd noip-duc_X.X.X/binaries && sudo apt install ./noip-duc_X.X.X_amd64.deb

Im crontab wird folgender Befehl eingetragen um Täglich das Backup Skript zu starten:

0 0 * * 0 /home/mc/server/backup.sh

Die Skripte müssen mit chmod +x ausführbar gemacht werden!!
