#!/bin/sh

docker build -t devfest-hello-world .
moby build hello-world.yml
linuxkit run hello-world
