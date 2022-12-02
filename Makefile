.PHONY: all test build deploy clean

all: test build deploy

test:
	bin/steps/test-markdown getting-help.md README.md
	bin/steps/test-shell bin/steps/* bin/lib/*.sh

build:
	bin/steps/build-artifacts getting-help.md

deploy:
	bin/steps/deploy-artifacts build/*

clean:
	rm -f getting-help.html getting-help.pdf
