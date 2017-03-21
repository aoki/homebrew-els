NAME := els
FILENAME := $(NAME)_darwin-amd64.zip
VERSION := 0.2.2

.PHONY: build
build:
	@VERSION=$(VERSION) HASH=$(shell make hash) erb els.erb > els.rb

.PHONY: release
release:
	git commit -am "Bump up to $(VERSION)"
	git tag -a v$(VERSION) -m "Release v$(VERSION)"
	git push origin --tags

.PHONY: test
test:
	brew audit --strict $(NAME).rb

.PHONY: hash
hash:
	@curl -sLO 'https://github.com/ringohub/els/releases/download/v$(VERSION)/$(FILENAME)'
	@shasum -a 256 $(FILENAME) | cut -d' ' -f 1
	@rm $(FILENAME)
