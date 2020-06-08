.PHONY: all
all: meta.js

%.js: %.pegjs
	npx pegjs $<
