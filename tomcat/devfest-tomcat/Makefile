.PHONY: build

build: ROOT.war
	linuxkit pkg build -enable-content-trust=false .

ROOT.war: 
	zip -rD ROOT.war ROOT/*
