.PHONY: clean build push run

default: run

build:
	$(MAKE) -C nginx build
	linuxkit build -format raw-bios -size 128M nginx-os.yml

push: build
	linuxkit push aws -bucket devfest-linuxkit -timeout 1200 nginx-os.raw

run:
	linuxkit run aws nginx-os 

clean:
	rm -Rf nginx-os.raw
