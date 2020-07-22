#!/bin/sh

sudo apt-get update
sudo apt-get install ufw
sudo ufw allow ssh/tcp
sudo ufw limit ssh/tcp
sudo ufw allow 25565/tcp
sudo ufw logging on
sudo ufw enable
sudo ufw status
