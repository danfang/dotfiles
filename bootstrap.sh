#!/bin/bash

apt-get update
apt-get -y dist-upgrade
apt-get -y upgrade
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get install --yes default-jdk postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 python-pip python-dev tmux htop unzip libpq-dev nodejs npm
pip install psycopg2 sqlalchemy virtualenv requests joe
