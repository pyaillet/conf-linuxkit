#!/bin/sh

./buildWar.sh
docker build -t pyaillet/getty ./getty
docker build -t pyaillet/tomcat-linuxkit .
moby build tomcat.yml
sudo linuxkit run --networking=vmnet tomcat 