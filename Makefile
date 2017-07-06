PYKWIKI = pykwiki

html:
	$(PYKWIKI) cache

force:
	$(PYKWIKI) cache -f

gh-pages: html
	git checkout gh-pages
	cp -r docroot/* .
	rm -rf docroot
	git add -A
	git commit -m "updated gh-pages from Makefile"
	git push origin gh-pages
	git checkout master

all: html

.PHONY: html force
