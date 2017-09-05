#!/bin/sh

docker build -t devfest-hello-tetris .
moby build hello-tetris.yml
linuxkit run hello-tetris
