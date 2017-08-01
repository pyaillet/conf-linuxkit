#!/bin/sh

docker build -t pyaillet/hello-server .
moby build hello-world.yml
linuxkit run hello-world