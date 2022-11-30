.PHONY: all test build deploy

all: test build deploy clean

test:
	bin/steps/validate-markdown getting-help.md
	bin/steps/validate-shell bin/steps/* bin/lib/*.sh

build:
	bin/steps/generate-artifacts getting-help.md

clean:
	rm -f getting-help.html getting-help.pdf
