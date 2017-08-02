#!/bin/sh

sudo rm -Rf tomcat-*
sudo kill -9 $(ps -ef | awk '/tomcat/{print $2}')
