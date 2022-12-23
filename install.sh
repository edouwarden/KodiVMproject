#!/bin/bash

sudo chmod +x kodi_install.sh

sudo echo "0 2-5 * * * apt update && apt upgrade -y" >> /etc/crontab

sudo apt update && apt upgrade -y

sudo apt install kodi lightdm -y

sudo apt remove --purge
sudo apt autoremove -y


echo "Le script a été exécuté avec succès"
