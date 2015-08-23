#!/bin/bash

apt-get update
apt-get -y dist-upgrade
apt-get -y upgrade
apt-get install default-jdk postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 python-pip python-dev tmux htop unzip libpq-dev
pip install psycopg2 sqlalchemy virtualenv requests joe
