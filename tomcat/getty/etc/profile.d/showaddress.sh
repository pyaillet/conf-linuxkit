#!/bin/sh

echo "http://$(ip -f inet -o address | grep eth0 | awk '{ print $4 }' | cut -d'/' -f1):8080/"