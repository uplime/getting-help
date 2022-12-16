.PHONY: all test build deploy clean

all: test build deploy

test:
	CB=bin/steps/test-shell bin/tools/for-each sh bash
	bin/steps/test-markdown getting-help.md README.md
	bin/steps/test-license LICENSE
	bin/steps/test-yaml lint.yml .github/workflows/test.yml

build:
	bin/steps/build-pdf getting-help.md
	bin/steps/build-webpage getting-help.md

deploy:
	bin/steps/deploy-artifacts build/getting-help.*

clean:
	rm -rf build
