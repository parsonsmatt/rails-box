#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install git node postgresql-9.3 libpq-dev postgresql-contrib-9.3 curl -y

# PostgreSQL setup
sudo -u postgres createuser -s vagrant 

