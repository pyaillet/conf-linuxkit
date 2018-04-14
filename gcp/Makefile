.PHONY: clean build push run

default: run

build:
	$(MAKE) -C nginx build
	linuxkit build -format gcp nginx-os.yml

push: build
	linuxkit push gcp -project $$GOOGLE_CLOUD_PROJECT -bucket conf-linuxkit nginx-os.img.tar.gz

run:
	linuxkit run gcp -project $$GOOGLE_CLOUD_PROJECT nginx-os 

clean:
	rm -Rf nginx-os.img.tar.gz
