.PHONY: build

build: ROOT.war
	linuxkit pkg build -enable-content-trust=false .

ROOT.war: 
	zip -rj ROOT.war ROOT/*

clean:
	rm ROOT.war