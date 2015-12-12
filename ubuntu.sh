#!/bin/bash

# Get node
curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -

# Get postgresql
echo "deb http://apt.postgresql.org/pub/repos/apt/ "$(lsb_release -sc)"-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

# Get redis
wget http://download.redis.io/redis-stable.tar.gz

# Get mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Update system packages
apt-get update
apt-get -y dist-upgrade
apt-get -y upgrade
apt-get install -y nginx default-jdk postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 python-pip python-dev tmux htop unzip libpq-dev nodejs npm

# Install python tools
pip install psycopg2 sqlalchemy virtualenv requests joe gunicorn

# Install node tools
npm install -g grunt grunt-cli forever

# user
useradd dfang
usermod -g admin dfang
