#!/bin/sh

sudo rm -Rf nginx-os.raw
sudo kill -9 $(ps -ef | awk '/nginx-os/{print $2}')
