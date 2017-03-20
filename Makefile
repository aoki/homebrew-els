NAME := els
FILENAME := $(NAME)_darwin-amd64.zip
VERSION := 0.2.1

.PHONY: build
build:
	@VERSION=$(VERSION) HASH=$(shell make hash) erb els.erb > els.rb

.PHONY: test
test:
	brew audit --new-formula $(NAME).rb

.PHONY: hash
hash:
	@curl -sLO 'https://github.com/ringohub/els/releases/download/v$(VERSION)/$(FILENAME)'
	@shasum -a 256 $(FILENAME) | cut -d' ' -f 1
	@rm $(FILENAME)
