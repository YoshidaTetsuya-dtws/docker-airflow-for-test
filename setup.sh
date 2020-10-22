#!/bin/bash

## this script is for CentOS 8

sudo yum remove -y docker \
     docker-client \
     docker-client-latest \
     docker-common \
     docker-latest \
     docker-latest-logrotate \
     docker-logrotate \
     docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager \
     --add-repo \
     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y containerd.io
sudo yum install -y docker-ce --nobest
sudo yum install -y docker-ce-cli
sudo systemctl start docker



sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" \
     -o /usr/local/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose




if ! getent group docker > /dev/null 2>&1; then
    sudo groupadd docker
fi
sudo usermod -aG docker airflow
