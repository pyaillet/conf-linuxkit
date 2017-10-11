.PHONY: clean build run

devfest-tomcat:
	$(MAKE) -C devfest-tomcat build

devfest-getty:
	$(MAKE) -C getty build

build: devfest-getty devfest-tomcat
	moby build -disable-content-trust=true tomcat-os.yml

run: build
	linuxkit run tomcat-os

clean:
	rm -Rf tomcat-os-*
	kill -9 $(shell pgrep -f hello-world-os)
