#!/bin/sh

sudo rm -Rf aws-*
sudo kill -9 $(ps -ef | awk '/aws/{print $2}')
