#!/bin/bash

yum update
yum -y install tmux vim
yum groups install "Development Tools"
useradd dfang
usermod -g wheel dfang
