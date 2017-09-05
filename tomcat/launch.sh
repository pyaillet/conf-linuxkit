#!/bin/sh

./buildWar.sh
docker build -t devfest-getty ./getty
docker build -t devfest-tomcat-linuxkit .
moby build tomcat.yml
sudo linuxkit run --networking=vmnet tomcat
