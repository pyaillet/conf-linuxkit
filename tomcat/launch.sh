#!/bin/sh

./buildWar.sh
docker build -t devfest-getty ./getty
docker build -t devfest-tomcat-linuxkit .
moby build tomcat-os.yml
sudo linuxkit run --networking=vmnet tomcat-os
