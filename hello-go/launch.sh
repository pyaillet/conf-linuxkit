#!/bin/sh

docker build -t devfest-hello-go .
moby build hello-go.yml
sudo linuxkit run -networking vmnet hello-go
