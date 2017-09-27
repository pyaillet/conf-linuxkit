#!/bin/sh

docker build -t devfest-hello-world .
moby build hello-world-os.yml
linuxkit run hello-world-os
