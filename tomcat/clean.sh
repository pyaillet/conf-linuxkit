#!/bin/sh

rm -Rf tomcat-*
kill -9 $(ps -ef | awk '/tomcat/{print $2}')