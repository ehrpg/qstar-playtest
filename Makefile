PYKWIKI = pykwiki

html:
	touch links.yaml && $(PYKWIKI) cache

force:
	touch links.yaml && $(PYKWIKI) cache -f

all: html

.PHONY: html force
