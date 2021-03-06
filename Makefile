.PHONY: start clean build deploy

build: clean
	hugo

clean:
	rm -rf public
	mkdir public

start:
	hugo server --buildDrafts --watch

deploy: build
	git subtree push --prefix=public --squash origin master
