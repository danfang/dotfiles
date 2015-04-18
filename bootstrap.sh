#!/bin/bash

apt-get update
apt-get -y dist0upgrade
apt-get -y upgrade
apt-get install default-jdk postgresql-9.3 python-pip python-dev tmux htop unzip postgresql-contrib libpq-dev
pip install psycopg2 sqlalchemy virtualenv requests joe
