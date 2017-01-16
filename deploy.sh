#! /bin/bash
#remplacer xxx par l'adresse IP de votre serveur
tail -n +3 "$0" | ssh root@xxx.xxx.xxx.xxx ; exit
set -eu

# mise a jour et installation des nouveaux paquets
sudo apt-get update -y && sudo apt-get upgrade -y

#install ngix
apt-get install nginx

#send list of processes to /var/www/index.html
ps > /var/www/html/index.html
