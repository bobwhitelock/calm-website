
.PHONY: start
start:
	jekyll serve

.PHONY: setup
setup:
	gem install bundler && bundle install && make contentful

.PHONY: contentful
contentful:
	. ./config.sh && jekyll contentful

.PHONY: demo
demo:
	jekyll build && cd _site && python -m SimpleHTTPServer 8000
