
.PHONY: start
start:
	jekyll serve

.PHONY: setup
setup:
	bin/setup

.PHONY: contentful
contentful:
	. ./config.sh && jekyll contentful

.PHONY: demo
demo:
	jekyll build && cd _site && python -m SimpleHTTPServer 8000
