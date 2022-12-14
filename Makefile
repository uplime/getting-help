.PHONY: all test build deploy clean

all: test build deploy

test:
	bin/steps/install-test-dependencies
	bin/steps/test-shell bin/steps/* bin/lib/*.sh
	bin/steps/test-markdown getting-help.md README.md
	bin/steps/test-license LICENSE
	bin/steps/test-yaml lint.yml .github/workflows/test.yml

build:
#	bin/steps/build-artifacts getting-help.md

deploy:
#	bin/steps/deploy-artifacts build/*

clean:
	rm -f build
