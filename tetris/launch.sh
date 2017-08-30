#!/bin/sh

docker build -t pyaillet/hello-tetris .
moby build hello-tetris.yml
linuxkit run hello-tetris
