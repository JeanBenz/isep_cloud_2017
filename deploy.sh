#!/bin/bash
# Utiliser l'adresse ip de votre serveur
tail -n +3 "$0" | ssh ubuntu@90.127.8.7; exit;

# Prevent errors
set -e

# Send apt-get update, upgrade, install ngnix
echo "  apt-get update
sudo apt-get update
echo "  apt-get upgrade
sudo apt-get upgrade -y
echo "  apt-get install nginx
sudo apt-get install nginx -y

cd /var/www/html

# TODO: pull if exist, please

# supprime le dossier
sudo rm -Rf isep_cloud_2017
# clone le nouveau site EZ PIZZI
sudo git clone https://github.com/Poudr/isep_cloud_2017.git
