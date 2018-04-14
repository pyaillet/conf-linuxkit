#!/bin/sh

sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go awscli

# sudo apt-get install docker.io

# sudo usermod -aG docker ubuntu
# newgrp docker
# newgrp ubuntu

cd /home/ubuntu
git clone http://github.com/linuxkit/linuxkit
cd linuxkit
make && sudo make install

export AWS_REGION=eu-west-1
aws configure

# Only once
# aws iam create-role --role-name vmimport --assume-role-policy-document file://trust-policy.json

# Only once
# aws iam put-role-policy --role-name vmimport --policy-name vmimport --policy-document file://role-policy.json



