#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean

# Pihole
curl -sSL https://install.pi-hole.net | bash

# Cron to keep pihole up to date
echo "# Update daily" >> /etc/cron.d/pihole
echo "@daily pihole -up" >> /etc/cron.d/pihole
