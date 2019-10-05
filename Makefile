
.PHONY: start
start:
	bin/start

.PHONY: setup
setup:
	bin/setup

.PHONY: contentful
contentful:
	. ./config.sh && jekyll contentful

.PHONY: demo
demo:
	bin/demo
