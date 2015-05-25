.PHONY: start chean

start:
	hugo server --buildDrafts --watch

clean:
	rm -f public/*
	rm -fr public/*
