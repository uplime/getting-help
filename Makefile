.PHONY: all test build deploy clean

all: test build deploy

test:
	CB=bin/steps/test-shell bin/tools/for-each sh bash
	CB=bin/steps/test-markdown bin/tools/for-each md
	CB=bin/steps/test-yaml bin/tools/for-each yml
	bin/steps/test-license LICENSE

build:
	bin/steps/build-pdf getting-help.md
	bin/steps/build-webpage getting-help.md

deploy:
	bin/steps/deploy-artifacts build/getting-help.*

clean:
	rm -rf build
