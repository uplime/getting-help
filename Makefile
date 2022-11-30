.PHONY: all test build deploy clean

all: test build deploy

test:
	bin/steps/validate-markdown getting-help.md
	bin/steps/validate-shell bin/steps/* bin/lib/*.sh

build:
	bin/steps/generate-artifacts getting-help.md

deploy:
	bin/steps/deploy-artifacts getting-help.html getting-help.pdf

clean:
	rm -f getting-help.html getting-help.pdf
