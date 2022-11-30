.PHONY: all test build deploy

all: test build deploy

test:
	bin/steps/validate-markdown getting-help.md
	bin/steps/validate-shell bin/steps/* bin/lib/*.sh
