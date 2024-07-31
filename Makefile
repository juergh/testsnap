# -*- makefile -*-

VERSION := $(shell sed -n 's/^version:\s*//p' snap/snapcraft.yaml | tr -d "'")
SNAP := testapp_$(VERSION)_amd64.snap

build: $(SNAP)

$(SNAP): snap/snapcraft.yaml
	snapcraft --verbose

install: $(SNAP)
	sudo snap install $(SNAP) --classic --dangerous

clean:
	rm -f $(SNAP)

.PHONY: all install clean
