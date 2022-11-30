.PHONY: all test build deploy clean

all: test build deploy

test:
	bash -x bin/steps/validate-markdown getting-help.md
	bash -x bin/steps/validate-shell bin/steps/* bin/lib/*.sh

build:
	bash -x bin/steps/generate-artifacts getting-help.md

deploy:
	bash -x bin/steps/deploy-artifacts getting-help.html getting-help.pdf

clean:
	rm -f getting-help.html getting-help.pdf
