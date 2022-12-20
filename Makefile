.PHONY: all test build deploy clean

all: test build deploy

test:
	bin/steps/test-executables bin/steps/* bin/tools/*
	bin/steps/test-license LICENSE
	bin/steps/test-grammar
	CB=bin/steps/test-shell bin/tools/for-each sh bash
	CB=bin/steps/test-markdown bin/tools/for-each md
	CB=bin/steps/test-yaml bin/tools/for-each yml

build:
	bin/steps/build-pdf getting-help.md
	bin/steps/build-stylesheet asset/sass/style.sass
	bin/steps/build-webpage getting-help.md

deploy:
	bin/steps/deploy-artifacts build/getting-help.*
#	bin/steps/deploy-empty-cache

clean:
	rm -rf build
