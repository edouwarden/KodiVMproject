#!/bin/bash

sudo chmod +x kodi_install.sh

sudo echo "0 2-5 * * * apt update && apt upgrade -y" >> /etc/crontab

sudo apt update && apt upgrade -y

sudo apt install kodi lightdm -y

sudo apt remove --purge
sudo apt autoremove -y

# Ajoutez la source de médias
kodi-send --action="{\"jsonrpc\":\"2.0\",\"method\":\"Files.AddVideosource\",\"params\":{\"name\":\"Serveur Kodi\",\"path\":\"https://kodi.majyx.net/\",\"username\":\"student\",\"password\":\"student\"},\"id\":1}"

# Obtenez la liste des sources de médias
sources=$(kodi-send --action="{\"jsonrpc\":\"2.0\",\"method\":\"Files.GetSources\",\"params\":{\"media\":\"video


echo "Le script a été exécuté avec succès"
