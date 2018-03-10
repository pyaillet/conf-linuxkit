.PHONY: clean build run lkt-tomcat lkt-getty

lkt-tomcat:
	$(MAKE) -C lkt-tomcat build

lkt-getty:
	$(MAKE) -C getty build

build: lkt-getty lkt-tomcat
	moby build -disable-content-trust=true tomcat-os.yml

run: build
	sudo linuxkit run -networking=vmnet tomcat-os

clean:
	sudo rm -Rf tomcat-os-*
	sudo kill -9 $(shell pgrep -f tomcat-os)
