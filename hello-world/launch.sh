#!/bin/sh

docker build -t pyaillet/hello-server .
moby build hello-world.yml
sudo linuxkit run -networking vmnet hello-world 
