.PHONY: clean build run devfest-tomcat devfest-getty

devfest-tomcat:
	$(MAKE) -C devfest-tomcat build

devfest-getty:
	$(MAKE) -C getty build

build: devfest-getty devfest-tomcat
	moby build -disable-content-trust=true tomcat-os.yml

run: build
	sudo linuxkit run -networking=vmnet tomcat-os

clean:
	sudo rm -Rf tomcat-os-*
	sudo kill -9 $(shell pgrep -f tomcat-os)
