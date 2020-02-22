#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean
sudo apt-get install openjdk-8-jre-headless -y
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ubnt.com/unifi/unifi-repo.gpg
sudo apt-get update; sudo apt-get install unifi -y

echo "@daily apt-get update --allow-releaseinfo-change -y && apt-get upgrade -y" >> /etc/cron.d/unifi
