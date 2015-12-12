#!/bin/bash

yum update
yum -y install tmux vim
yum groups install "Development Tools"

read -p "Configuring admin user profile. Enter username: " USER
echo "";

useradd $USER
usermod -g wheel $USER

mkdir -p "/home/${USER}/.ssh/"
cat "keys/id_rsa.pub" > "/home/${USER}/.ssh/authorized_keys"
