#!/bin/sh

sudo rm -Rf tomcat-os-*
sudo kill -9 $(ps -ef | awk '/tomcat-os/{print $2}')
