PYKWIKI = pykwiki

html:
	$(PYKWIKI) cache

force:
	$(PYKWIKI) cache -f

all: html

.PHONY: html force
