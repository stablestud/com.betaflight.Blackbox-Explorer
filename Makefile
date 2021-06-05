.PHONY: all build install run sources clean cleanall

SOURCES=src-app.json src-appdata.json
APPDATA=com.betaflight.Blackbox-Explorer.appdata.xml

all: sources install

build:
	flatpak-builder build-dir com.betaflight.Blackbox-Explorer.yml --force-clean --build-only
install:
	flatpak-builder build-dir com.betaflight.Blackbox-Explorer.yml --user --force-clean --install
run:
	flatpak run --user com.betaflight.Blackbox-Explorer
clean:
	rm --verbose --force --recursive $(SOURCES) $(APPDATA) build-dir
cleanall: clean
	rm --verbose --force --recursive build-dir .flatpak-builder
sources: clean
	./generate-sources.sh
