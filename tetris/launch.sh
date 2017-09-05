#!/bin/sh

docker build -t devefest-hello-tetris .
moby build hello-tetris.yml
linuxkit run hello-tetris
